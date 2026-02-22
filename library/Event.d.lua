---@meta


---@class Event
---@field targetEvent UnityEventBase
---@field _host GBMod
Event = {}

---@param func any
function Event.AddListener(func) end

---@return Event
function Event.New() end

---@param func any
function Event.RemoveListener(func) end

function Event.Clear() end

---@param args any[]
function Event.Invoke(args) end

---@return string
function Event.GetSignature() end
