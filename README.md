# 📃 GoreBox modding API Lua definitions
#### English | [Русский](README.ru.md)
GoreBox modding API Lua definition files with conversion and installation tools for VS Code

## Installation and update
1. Install sumneko`s Lua extension: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
2. Download this project, unarchive it and move it to your mod`s folder.
3. Install Python
4. Open terminal in `gorebox-modding-api-definitions-main` directory
5. Run `install.py` script:
```bash
py install.py
```
1. Remove `gorebox-modding-api-definitions-main` directory

## Dump to Lua definition files conversion
```bash
py converter.py dump.txt -o library/
```

## Tips and tricks
1. To enable Lua module typification, annotate the module with the @module annotation:
```lua
---@module "module"
local module = File.DoFile("mod_directory/module.lua")
```
2. Use the "." operator instead of ":" for all function calls:
```lua
local player = ...
player:SendChatMessage("Welcome to the server!") -- ❌
player.SendChatMessage("Welcome to the server!") -- ✅
```