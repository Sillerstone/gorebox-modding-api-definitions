---@meta


---@class Component
---@field component Component
---@field GameObject GameObject
---@field Active boolean
Component = {}

---@return string
function Component.Name() end

---@return string[]
function Component.GetComponents() end

---@param name string
---@return any
function Component.GetField(name) end

---@param name string
---@param value any
function Component.SetField(name, value) end

---@return string[]
function Component.GetFields() end

---@param methodName string
---@param args any[]
---@return any
function Component.CallMethod(methodName, args) end

---@return string[]
function Component.GetMethods() end

---@param methodName string
---@return string
function Component.GetMethodForm(methodName) end

---@param fieldName string
---@return UnknownType
function Component.GetAsUnknownType(fieldName) end
