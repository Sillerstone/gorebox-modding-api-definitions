---@meta


---@class json
json = {}

---@param json string
---@return table
function json.parse(json) end

---@param table table
---@return string
function json.serialize(table) end

---@param object any
---@return boolean
function json.isnull(object) end

---@return userdata
function json.null() end
