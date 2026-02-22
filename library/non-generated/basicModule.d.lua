---@meta


---@class basicModule
basicModule = {}

---Returns the type of its only argument, coded as a string. The possible results of this function are `"nil"` (a string, not the value `nil`), `"number"`, `"string"`, `"boolean"`, `"table"`, `"function"`, `"thread"`, and `"userdata"`.
---@param v any
---@return type type
---@nodiscard
function basicModule.type(v) end

---Raises an error if the value of its argument v is false (i.e., `nil` or `false`); otherwise, returns all its arguments. In case of error, `message` is the error object; when absent, it defaults to `"assertion failed!"`
---@generic T
---@param v? T
---@param message? any
---@param ... any
---@return T
---@return any ...
function basicModule.assert(v, message, ...) end

---This function is a generic interface to the garbage collector. It performs different functions according to its first argument, opt:
---
---* `"collect"`: Performs a full garbage-collection cycle. This is the default option.
---* `"stop"`: Stops automatic execution of the garbage collector. The collector will run only when explicitly invoked, until a call to restart it.
---* `"restart"`: Restarts automatic execution of the garbage collector.
---* `"count"`: Returns the total memory in use by Lua in Kbytes. The value has a fractional part, so that it multiplied by 1024 gives the exact number of bytes in use by Lua.
---* `"step"`: Performs a garbage-collection step. The step "size" is controlled by arg. With a zero value, the collector will perform one basic (indivisible) step. For non-zero values, the collector will perform as if that amount of memory (in Kbytes) had been allocated by Lua. Returns true if the step finished a collection cycle.
---* `"isrunning"`: Returns a boolean that tells whether the collector is running (i.e., not stopped).
---* `"incremental"`: Change the collector mode to incremental. This option can be followed by three numbers: the garbage-collector pause, the step multiplier, and the step size (see [§2.5.1](command:extension.lua.doc?["en-us/54/manual.html/2.5.1"])). A zero means to not change that value.
---* `"generational"`: Change the collector mode to generational. This option can be followed by two numbers: the garbage-collector minor multiplier and the major multiplier (see [§2.5.2](command:extension.lua.doc?["en-us/54/manual.html/2.5.2"])). A zero means to not change that value.
---See [§2.5](command:extension.lua.doc?["en-us/54/manual.html/2.5"]) for more details about garbage collection and some of these options.
---
---This function should not be called by a finalizer.
---
---
---[View documents](command:extension.lua.doc?["en-us/54/manual.html/pdf-collectgarbage54"])
---
---@overload fun(opt?: "collect")
---@overload fun(opt: "stop")
---@overload fun(opt: "restart")
---@overload fun(opt: "count"): number
---@overload fun(opt: "step", arg: integer): true
---@overload fun(opt: "isrunning"): boolean
---@overload fun(opt: "incremental", pause?: integer, multiplier?: integer, stepsize?: integer)
---@overload fun(opt: "generational", minor?: integer, major?: integer)
function basicModule.collectgarbage(...) end

---Terminates the last protected function called and returns message as the error object.
---
---Usually, `error` adds some information about the error position at the beginning of the message, if the message is a string.
---@param message any
---@param level?  integer
function basicModule.error(message, level) end

---Receives a value of any type and converts it to a string in a human-readable format.
---
---If the metatable of `v` has a `__tostring` field, then `tostring` calls the corresponding value with `v` as argument, and uses the result of the call as its result. Otherwise, if the metatable of `v` has a `__name` field with a string value, `tostring` may use that string in its final result.
---
---For complete control of how numbers are converted, use [string.format](command:extension.lua.doc?["en-us/54/manual.html/pdf-string.format"]).
---@param v any
---@return string
---@nodiscard
function basicModule.tostring(v) end

---If `index` is a number, returns all arguments after argument number `index`; a negative number indexes from the end (`-1` is the last argument). Otherwise, `index` must be the string `"#"`, and `select` returns the total number of extra arguments it received.
---@param index integer|"#"
---@param ...   any
---@return any
---@nodiscard
function basicModule.select(index, ...) end

---When called with no `base`, `tonumber` tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then `tonumber` returns this number; otherwise, it returns `fail`.
---
---The conversion of strings can result in integers or floats, according to the lexical conventions of Lua (see [§3.1](command:extension.lua.doc?["en-us/54/manual.html/3.1"])). The string may have leading and trailing spaces and a sign.
---@overload fun(e: string, base: integer):integer
---@param e any
---@return number?
---@nodiscard
function basicModule.tonumber(e) end

---Receives any number of arguments and prints their values to `stdout`, converting each argument to a string following the same rules of [tostring](command:extension.lua.doc?["en-us/54/manual.html/pdf-tostring"]).
---The function print is not intended for formatted output, but only as a quick way to show a value, for instance for debugging. For complete control over the output, use [string.format](command:extension.lua.doc?["en-us/54/manual.html/pdf-string.format"]) and [io.write](command:extension.lua.doc?["en-us/54/manual.html/pdf-io.write"]).
---@param ... any
function basicModule.print(...) end
