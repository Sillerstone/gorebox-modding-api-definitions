---@meta


---@class dynamic
dynamic = {}

---@overload fun(expression: DynamicExpression): any
---@param lua string
---@return any
function dynamic.eval(lua) end

---@param string string
---@return DynamicExpression|nil
function dynamic.prepare(string) end
