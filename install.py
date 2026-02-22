import shutil
from pathlib import Path
import json

current_directory = Path.cwd()
project_name = "gorebox-modding-api-definitions"
if not project_name in current_directory.as_posix():
    print("❌ Run this script in \"" + project_name + "\" directory")
    raise RuntimeError

work_directory = current_directory.parent / ".vscode"
settings_file = work_directory / "settings.json"
lua_definitions_directory = work_directory / "lua" / "gorebox"

if not lua_definitions_directory.exists():
    lua_definitions_directory.mkdir(parents=True, exist_ok=True)

shutil.rmtree(lua_definitions_directory)
shutil.copytree(current_directory / "library", lua_definitions_directory, dirs_exist_ok=True)

if not settings_file.exists():
    settings_file.write_text("")

with settings_file.open("r", encoding="utf-8") as f:
    try:
        data = json.load(f)
    except json.JSONDecodeError:
        data = {}

data["Lua.workspace.library"] = ["/libraryy"]
data["Lua.runtime.special"] = {
    "basicModule.assert": "assert",
    "loadModule.dofile": "dofile",
    "basicModule.error": "error",
    "loadModule.loadfile": "loadfile",
    "loadModule.loadfilesafe": "loadfile",
    "errorHandling.pcall": "pcall",
    "metaTable.rawget": "rawget",
    "metaTable.rawset": "rawset",
    "metaTable.setmetatable": "setmetatable",
    "basicModule.type": "type",
    "errorHandling.xpcall": "xpcall"
}

with settings_file.open("w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=4)

print("📃 LUA definition files installed successfully!")