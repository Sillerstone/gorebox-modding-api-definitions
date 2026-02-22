---@meta


---@class table
table = {}

---Returns the elements from the given list.
---@generic T1, T2, T3, T4, T5, T6, T7, T8, T9, T10
---@param list {
--- [1]?: T1,
--- [2]?: T2,
--- [3]?: T3,
--- [4]?: T4,
--- [5]?: T5,
--- [6]?: T6,
--- [7]?: T7,
--- [8]?: T8,
--- [9]?: T9,
--- [10]?: T10,
---}
---@param i?   integer
---@param j?   integer
---@return T1, T2, T3, T4, T5, T6, T7, T8, T9, T10
---@nodiscard
function table.unpack(list, i, j) end

---Returns a new table with all arguments stored into keys `1`, `2`, etc. and with a field `"n"` with the total number of arguments.
---@return table
---@nodiscard
function table.pack(...) end

---Sorts list elements in a given order, *in-place*, from `list[1]` to `list[#list]`.
---@generic T
---@param list T[]
---@param comp? fun(a: T, b: T):boolean
function table.sort(list, comp) end

---Inserts element `value` at position `pos` in `list`.
---@overload fun(list: table, value: any)
---@param list table
---@param pos integer
---@param value any
---@diagnostic disable-next-line: redundant-parameter
function table.insert(list, pos, value) end

---Removes from `list` the element at position `pos`, returning the value of the removed element.
---@param list table
---@param pos? integer
---@return any
function table.remove(list, pos) end

---Given a list where all elements are strings or numbers, returns the string `list[i]..sep..list[i+1] ··· sep..list[j]`.
---@param list table
---@param sep? string
---@param i?   integer
---@param j?   integer
---@return string
---@nodiscard
function table.concat(list, sep, i, j) end
