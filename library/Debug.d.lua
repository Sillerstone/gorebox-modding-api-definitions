---@meta


---@class Debug
---@field host GBMod
Debug = {}

---@param msg string
function Debug.Log(msg) end

---@param msg string
function Debug.LogError(msg) end

---@param msg string
function Debug.SendChatMessageError(msg) end

---@param visible boolean
function Debug.SetConsoleVisible(visible) end
