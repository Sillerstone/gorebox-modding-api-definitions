---@meta


---@class errorHandling
errorHandling = {}

---Calls the function `f` with the given arguments in *protected mode*. This means that any error inside `f` is not propagated; instead, `pcall` catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, `pcall` also returns all results from the call, after this first result. In case of any error, `pcall` returns `false` plus the error object.
---@param f     async fun(...):...
---@param arg1? any
---@param ...   any
---@return boolean success
---@return any result
---@return any ...
function errorHandling.pcall(f, arg1, ...) end

---@param ... any
---@return any true
---@return any ...
function errorHandling.pcall_continuation(...) end

---@param ... any
---@return any false
---@return any ...
function errorHandling.pcall_onerror(...) end

---Calls function `f` with the given arguments in protected mode with a new message handler.
---@param f     async fun(...):...
---@param msgh  function
---@param arg1? any
---@param ...   any
---@return boolean success
---@return any result
---@return any ...
function errorHandling.xpcall(f, msgh, arg1, ...) end
