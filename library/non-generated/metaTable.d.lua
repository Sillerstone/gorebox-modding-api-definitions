---@meta


---@class metaTable
metaTable = {}

---Sets the metatable for the given table. If `metatable` is `nil`, removes the metatable of the given table. If the original metatable has a `__metatable` field, raises an error.
---
---This function returns `table`.
---
---To change the metatable of other types from Lua code, you must use the debug library ([§6.10](command:extension.lua.doc?["en-us/54/manual.html/6.10"])).
---@param table      table
---@param metatable? metatable|table
---@return table
function metaTable.setmetatable(table, metatable) end

---Returns the metatable of the given value.
---@param object any
---@return table metatable
---@nodiscard
function metaTable.getmetatable(object) end

---Gets the real value of `table[index]`, without invoking the `__index` metamethod.
---@param table table
---@param index any
---@return any
---@nodiscard
function metaTable.rawget(table, index) end

---Sets the real value of `table[index]` to `value`, without using the `__newindex` metavalue. `table` must be a table, `index` any value different from `nil` and `NaN`, and `value` any Lua value.
---This function returns `table`.
---@param table table
---@param index any
---@param value any
---@return table
function metaTable.rawset(table, index, value) end

---Checks whether v1 is equal to v2, without invoking the `__eq` metamethod.
---@param v1 any
---@param v2 any
---@return boolean
---@nodiscard
function metaTable.rawequal(v1, v2) end

---Returns the length of the object `v`, without invoking the `__len` metamethod.
---@param v table|string
---@return integer len
---@nodiscard
function metaTable.rawlen(v) end
