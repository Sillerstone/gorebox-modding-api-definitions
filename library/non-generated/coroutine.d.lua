---@meta


---@class coroutine
coroutine = {}

---Creates a new coroutine, with body `f`. `f` must be a function. Returns this new coroutine, an object with type `"thread"`.
---@param f async fun(...):...
---@return thread
---@nodiscard
function coroutine.create(f) end

---Creates a new coroutine, with body `f`; `f` must be a function. Returns a function that resumes the coroutine each time it is called.
---@param f async fun(...):...
---@return fun(...):...
---@nodiscard
function coroutine.wrap(f) end

---Starts or continues the execution of coroutine `co`.
---@param co    thread
---@param val1? any
---@return boolean success
---@return any ...
function coroutine.resume(co, val1, ...) end

---Suspends the execution of the calling coroutine.
---@async
---@return any ...
function coroutine.yield(...) end

---Returns the running coroutine plus a boolean, true when the running coroutine is the main one.
---@return thread running
---@return boolean ismain
---@nodiscard
function coroutine.running() end

---Returns the status of coroutine `co`.
---@param co thread
---@return
---| '"running"'   # Is running.
---| '"suspended"' # Is suspended or not started.
---| '"normal"'    # Is active but not running.
---| '"dead"'      # Has finished or stopped with an error.
---@nodiscard
function coroutine.status(co) end
