---@meta


---@class UnknownType
---@field Value any
UnknownType = {}

---@param name string
---@return any
function UnknownType.GetField(name) end

---@param name string
---@param value any
function UnknownType.SetField(name, value) end

---@return string[]
function UnknownType.GetFields() end

---@param methodName string
---@param args any[]
---@return any
function UnknownType.CallMethod(methodName, args) end

---@return string[]
function UnknownType.GetMethods() end

---@param methodName string
---@return string
function UnknownType.GetMethodForm(methodName) end

---@param fieldName string
---@return UnknownType
function UnknownType.GetAsUnknownType(fieldName) end
