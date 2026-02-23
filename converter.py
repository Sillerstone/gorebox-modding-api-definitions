#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
MoonSharp Dump -> Lua .d.lua Converter
"""

import re
import os
import sys
import argparse
from pathlib import Path
from typing import Any, Dict, List, Optional

# ========== CONSTANTS ==========
DOTNET_TO_LUA_TYPES = {
    "System.String": "string", "System.Char": "string", "System.SByte": "integer",
    "System.Int16": "integer", "System.Int32": "integer", "System.Int64": "integer",
    "System.UInt16": "integer", "System.UInt32": "integer", "System.UInt64": "integer",
    "System.Single": "number", "System.Double": "number", "System.Decimal": "number",
    "System.Boolean": "boolean", "System.Void": "nil",
    "UnityEngine.Vector2": "Vector2", "UnityEngine.Vector3": "Vector3",
    "UnityEngine.Vector4": "Vector4", "UnityEngine.Texture2D": "Texture2D",
    "UnityEngine.Color": "Color"
}

CLASS_RENAMES = {
    "BasicModule": "basicModule", "Bit32Module": "bit32", "CoroutineModule": "coroutine",
    "DynamicModule": "dynamic", "ErrorHandlingModule": "errorHandling", "JsonModule": "json",
    "LoadModule": "loadModule", "LuaFileManagement": "File", "LuaPhysicsModule": "Physic",
    "LuaPUNPlayer": "Player", "MathModule": "math", "MetaTableModule": "metaTable",
    "StringModule": "string", "TableIteratorsModule": "tableIterators", "TableModule": "table"
}

TYPE_RENAMES = {
    "LUAModding.LuaVector2": "Vector2",
    "LUAModding.LuaVector3": "Vector3", 
    "LUAModding.LuaVector4": "Vector4",
    "LUAModding.LuaTexture": "Texture",
    "LUAModding.LuaGUI": "GUI",
    "LUAModding.LuaGUIStyle": "GUIStyle",
    "MoonSharp.Interpreter.Table": "table",
    "LUAModding.LuaPUNPlayer": "Player"
}

EXCLUDED_METHODS = {
    '__new', 'GetType', 'GetHashCode', 'Equals', 'ToString', "MoonSharpInit", "__wrap_wrapper", "__require_clr_impl", "__next_i"
}

SPECIAL_ANY_TYPES = {
    'MoonSharp.Interpreter.DynValue',
    'MoonSharp.Interpreter.CallbackArguments', 
    'MoonSharp.Interpreter.ScriptExecutionContext',
    'DynValue', 'CallbackArguments', 'ScriptExecutionContext',
    'System.Object', 'Object'
}

EXCLUDED_FILES = {
    'basicModule',
    'bit32',
    'coroutine',
    'dynamic',
    'errorHandling',
    'json',
    'loadModule',
    'math',
    'metaTable',
    'string',
    'table',
    'tableIterators'
}

# ========== PARSER ==========
def preprocess_text(text: str) -> str:
    text = re.sub(r'\r\n?', '\n', text)
    text = re.sub(r'[ \t]+', ' ', text)
    text = re.sub(r'\n\s*\n', '\n', text)
    return text

def tokenize(text: str) -> List[dict]:
    text = preprocess_text(text)
    tokens = []
    i = 0
    n = len(text)
    
    while i < n:
        if text[i] in ' \n\t\r': i += 1; continue
        if text[i:i+2] == '${': tokens.append({'type': 'brace_open', 'value': '${'}); i += 2; continue
        if text[i] == '}': tokens.append({'type': 'brace_close', 'value': '}'}); i += 1; continue
        if text[i] == '[': tokens.append({'type': 'bracket_open', 'value': '['}); i += 1; continue
        if text[i] == ']': tokens.append({'type': 'bracket_close', 'value': ']'}); i += 1; continue
        if text[i] == '=': tokens.append({'type': 'equals', 'value': '='}); i += 1; continue
        if text[i] == ',': tokens.append({'type': 'comma', 'value': ','}); i += 1; continue
        
        if text[i] == '"':
            j = i + 1
            while j < n and not (text[j] == '"' and (j == 0 or text[j-1] != '\\')): j += 1
            value = text[i+1:j].replace('\\"', '"')
            tokens.append({'type': 'string', 'value': value})
            i = j + 1; continue
        
        j = i
        while j < n and text[j] not in ' \n\t\r=,[]{}': j += 1
        value = text[i:j].strip()
        if value:
            if re.match(r'-?\d+(\.\d+)?', value):
                tokens.append({'type': 'number', 'value': value})
            else:
                tokens.append({'type': 'identifier', 'value': value})
        i = j
    return tokens

def parse_value(tokens: List[dict], i: List[int]) -> Any:
    if i[0] >= len(tokens): return None
    tok = tokens[i[0]]
    if tok['type'] == 'brace_open': return parse_table(tokens, i)
    elif tok['type'] == 'string': i[0] += 1; return tok['value']
    elif tok['type'] == 'number': i[0] += 1; return float(tok['value']) if '.' in tok['value'] else int(tok['value'])
    elif tok['type'] == 'identifier':
        i[0] += 1
        ident = tok['value']
        if ident == 'true': return True
        if ident == 'false': return False
        return ident
    return None

def parse_table(tokens: List[dict], i: List[int]) -> Dict[Any, Any]:
    result = {}
    if i[0] < len(tokens) and tokens[i[0]]['type'] == 'brace_open': i[0] += 1
    
    while i[0] < len(tokens):
        tok = tokens[i[0]]
        if tok['type'] == 'brace_close': i[0] += 1; break
        
        key = None
        if tok['type'] == 'bracket_open':
            i[0] += 1
            if i[0] < len(tokens):
                key_tok = tokens[i[0]]
                if key_tok['type'] in ('number', 'string', 'identifier'):
                    key = int(key_tok['value']) if key_tok['type'] == 'number' else key_tok['value']
                    i[0] += 1
            if i[0] < len(tokens) and tokens[i[0]]['type'] == 'bracket_close': i[0] += 1
        elif tok['type'] in ('identifier', 'string'):
            key = tok['value']; i[0] += 1
        
        if key is None: break
        
        while i[0] < len(tokens) and tokens[i[0]]['type'] not in ('equals', 'brace_close'): i[0] += 1
        if i[0] < len(tokens) and tokens[i[0]]['type'] == 'equals': i[0] += 1
        
        value = parse_value(tokens, i)
        if value is not None: result[key] = value
        if i[0] < len(tokens) and tokens[i[0]]['type'] == 'comma': i[0] += 1
    return result

def parse_dump(text: str) -> Dict[Any, Any]:
    tokens = tokenize(text)
    print(f"🔍 Tokens: {len(tokens)}")
    i = [0]
    result = parse_table(tokens, i)
    print(f"📊 Top-level elements: {len(result)}")
    return result

# ========== LUA GENERATOR ==========
def normalize_class_name(fullname: str) -> str:
    """Class name normalization (for @class and filenames)"""
    short = fullname.split('.')[-1]
    return CLASS_RENAMES.get(short, short[3:] if short.startswith('Lua') else short)

def normalize_type_name(dotnet_type: str) -> str:
    """Type name normalization (for @param, @return, @field)"""
    dotnet_type_lower = dotnet_type.lower()
    for special in SPECIAL_ANY_TYPES:
        if dotnet_type == special or dotnet_type_lower.endswith(special.lower()):
            return 'any'

    if dotnet_type in TYPE_RENAMES:
        return TYPE_RENAMES[dotnet_type]
    
    if "System.Collections.Generic.List" in dotnet_type:
        return "table"
    
    if "System.Func" in dotnet_type:
        return "function"
    
    if dotnet_type in ("System.Object[]", "Object[]"):
        return "any[]"
    
    if dotnet_type in ("LUAModding.LuaPUNPlayer[]", "PUNPlayer[]"):
        return "Player[]"
    
    raw = dotnet_type
    is_array = raw.endswith('[]')
    if is_array: raw = raw[:-2]
    
    if '`1[' in raw and raw.endswith(']'):
        inner = raw.split('`1[', 1)[1][:-1]
        inner_normalized = normalize_type_name(inner)
        return f"{inner_normalized}[]"
    
    if raw in DOTNET_TO_LUA_TYPES:
        result = DOTNET_TO_LUA_TYPES[raw]
    else:
        result = raw.split('.')[-1]
        if result.startswith('Lua'):
            result = result[3:]
    
    return f"{result}[]" if is_array else result

def find_classes(root: Dict[Any, Any]) -> Dict[str, Dict[str, Any]]:
    """Find MoonSharp classes"""
    classes = {}
    def search(obj: Any, path: str = ""):
        if isinstance(obj, dict):
            class_info = obj.get('class', '')
            has_members = 'members' in obj
            if has_members and ('MoonSharp.Interpreter.Interop' in str(class_info) or 
                              'StandardUserDataDescriptor' in str(class_info) or 
                              any('MethodMemberDescriptor' in str(m.get('class', '')) 
                                  for m in obj.get('members', {}).values())):
                classes[path or 'Unknown'] = obj
            for key, value in obj.items():
                search(value, f'{path}.{key}' if path else str(key))
    search(root)
    return classes

def get_field_name(method_name: str) -> Optional[str]:
    """✅ get_/set_ → field name"""
    if method_name.startswith('get_'):
        return method_name[4:]  # get_Health → Health
    if method_name.startswith('set_'):
        return method_name[4:]  # set_Health → Health
    return None

def generate_lua_class(fullname: str, class_data: Dict[str, Any]) -> str:
    """Generate Lua definition for class"""
    name = normalize_class_name(fullname)
    lines = ['---@meta', '', '']
    
    members = class_data.get('members', {})
    
    field_lines = []
    property_types = {}
    
    for mname, mdata in members.items():
        if isinstance(mdata, dict):
            field_type = None
            
            for tkey in ('type', 'fieldtype', 'fieldType', 'propertyType'):
                if tkey in mdata:
                    field_type = mdata[tkey]
                    field_lines.append(f'---@field {mname} {normalize_type_name(field_type)}')
                    break
            
            field_name = get_field_name(mname)
            if field_name:
                if mname.startswith('get_') and 'ret' in mdata:
                    property_types[field_name] = mdata['ret']
                elif mname.startswith('set_'):
                    overloads = mdata.get('overloads', {})
                    if isinstance(overloads, dict):
                        first_overload = overloads.get(1)
                        if first_overload and first_overload.get('params'):
                            params = first_overload['params']
                            first_param = params.get(1)
                            if first_param:
                                property_types[field_name] = first_param.get('type') or first_param.get('origtype')
    
    for field_name, field_type in property_types.items():
        if field_name not in EXCLUDED_METHODS:
            field_lines.append(f'---@field {field_name} {normalize_type_name(field_type)}')
    
    field_lines = list(dict.fromkeys(field_lines))
    
    lines.extend([f'---@class {name}'] + field_lines)
    lines.extend([f'{name} = {{}}', ''])
    
    for mname, mdata in members.items():
        field_name = get_field_name(mname)
        if field_name or mname in EXCLUDED_METHODS:
            continue
            
        if isinstance(mdata, dict) and 'overloads' in mdata:
            overloads = mdata.get('overloads', {})
            if isinstance(overloads, dict):
                for idx in sorted(k for k in overloads if isinstance(k, int)):
                    lines.extend(generate_method_overload(name, mname, overloads[idx]))

    return '\n'.join(lines)

def generate_method_overload(class_name: str, method_name: str, overload: Dict[str, Any]) -> List[str]:
    """Generate single method overload"""
    lines = []
    params = overload.get('params', {}) or {}
    
    param_order = sorted(k for k in params if isinstance(k, int))
    ordered_params = [params[idx] for idx in param_order]
    
    if class_name == "File" and method_name == "DoFile":
        lines.append("---@overload fun(relativePath: string): any")
    elif class_name == "File" and method_name == "DoString":
        lines.append("---@overload fun(code: string): any")
    elif class_name == "File" and method_name == "ImportFile":
        lines.append("---@overload fun(path: string): string")
    elif class_name == "Server" and method_name == "SendChatMessage":
        lines.append("---@overload fun(msg: string)")
    elif class_name == "Player" and method_name == "SendChatMessage":
        lines.append("---@overload fun(msg: string)")
    
    
    for param in ordered_params:
        ptype = normalize_type_name(param.get('type') or param.get('origtype') or '')
        lines.append(f'---@param {re.sub(r'\bend\b', 'endArgument', param.get("name", "param"))} {ptype}')

    ret_type = overload.get('ret')
    if ret_type and 'Void' not in str(ret_type):
        lines.append(f'---@return {normalize_type_name(str(ret_type))}')
    
    args = re.sub(r'\bend\b', 'endArgument', ', '.join(p.get('name', 'param') for p in ordered_params))
    lines.extend([f'function {class_name}.{method_name}({args}) end', ''])
    return lines

# ========== MAIN ==========
def main():
    parser = argparse.ArgumentParser(description='MoonSharp Dump → Lua .d.lua')
    parser.add_argument('input', help='Path to dump.txt')
    parser.add_argument('-o', '--output', default='.', help='Output directory')
    args = parser.parse_args()
    
    input_path = Path(args.input)
    output_dir = Path(args.output)
    
    print(f"📂 Working directory: {os.getcwd()}")
    print(f"📄 Input file: {input_path.absolute()}")
    
    if not input_path.exists():
        print(f"❌ File not found: {input_path}")
        return
    
    try:
        print("🔍 Parsing...")
        with input_path.open('r', encoding='utf-8') as f:
            data = parse_dump(f.read())
        
        classes = find_classes(data)
        print(f"✅ Classes found: {len(classes)}")
        
        if not classes:
            debug_path = output_dir / 'debug_structure.txt'
            with debug_path.open('w', encoding='utf-8') as f:
                f.write(repr(data)[:10000] + '...')
            print(f"💾 Debug saved: {debug_path.absolute()}")
            return
        
        output_dir.mkdir(exist_ok=True)
        generated = 0
        
        for fullname, cls_data in classes.items():
            try:
                content = generate_lua_class(fullname, cls_data)
                class_name = normalize_class_name(fullname)
                if class_name in EXCLUDED_FILES:
                    continue
                
                filename = f"{class_name}.d.lua"
                output_path = output_dir / filename
                
                with output_path.open('w', encoding='utf-8') as f:
                    f.write(content)
                
                print(f"✅ {filename}")
                generated += 1
            except Exception as e:
                print(f"⚠️  Error generating {fullname}: {e}")

        print(f"\n🎉 Done! Generated: {generated} files")
        
    except Exception as e:
        print(f"💥 Error: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    main()
