# 📃 GoreBox modding API Lua definitions
#### [English](https://github.com/Sillerstone/gorebox-modding-api-definitions) | Русский
GoreBox modding API Lua definition files with conversion and installation tools for VS Code
Файлы Lua definition для GoreBox моддинг API с инструментами для конвертации и установки в VS Code

## Установка и обновление
1. Установите расширение для Lua от sumneko: https://marketplace.visualstudio.com/items?itemName=sumneko.lua
2. Скачайте этот проект, разархивируйте его и переместите в папку проекта вашего мода
3. Установите Python
4. Откройте терминал в `gorebox-modding-api-definitions-main` директории
5. Запустите `install.py` скрипт:
```bash
py install.py
```
1. Удалите `gorebox-modding-api-definitions-main` директорию

## Конвертация файла дампа в файлы Lua definition
```bash
py converter.py dump.txt -o library/
```

## Советы и рекомендации
1. Для включения типизации Lua модулей, аннотируйте модуль аннотацией @module:
```lua
---@module "module"
local module = File.DoFile("mod_directory/module.lua")
```
1. Используйте оператор "." вместо ":" для всех вызовов функций:
```lua
local player = ...
player:SendChatMessage("Добро пожаловать на наш сервер!") -- ❌
player.SendChatMessage("Добро пожаловать на наш сервер!") -- ✅
```