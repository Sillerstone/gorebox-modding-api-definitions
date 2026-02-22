---@meta


---@class loadModule
---@field require string
loadModule = {}

---Loads a chunk.
---
---If `chunk` is a string, the chunk is this string. If `chunk` is a function, `load` calls it repeatedly to get the chunk pieces. Each call to `chunk` must return a string that concatenates with previous results. A return of an empty string, `nil`, or no value signals the end of the chunk.
---@param chunk      string|function
---@param chunkname? string
---@param mode?      loadmode
---@param env?       table
---@return function?
---@return string?   error_message
---@nodiscard
function loadModule.load(chunk, chunkname, mode, env) end

---Loads a chunk.
---
---If `chunk` is a string, the chunk is this string. If `chunk` is a function, `load` calls it repeatedly to get the chunk pieces. Each call to `chunk` must return a string that concatenates with previous results. A return of an empty string, `nil`, or no value signals the end of the chunk.
---@param chunk      string|function
---@param chunkname? string
---@param mode?      loadmode
---@param env?       table
---@return function?
---@return string?   error_message
---@nodiscard
function loadModule.loadsafe(chunk, chunkname, mode, env) end

---Loads a chunk from file `filename` or from the standard input, if no file name is given.
---@param filename? string
---@param mode?     loadmode
---@param env?      table
---@return function?
---@return string?  error_message
---@nodiscard
function loadModule.loadfile(filename, mode, env) end

---Loads a chunk from file `filename` or from the standard input, if no file name is given.
---@param filename? string
---@param mode?     loadmode
---@param env?      table
---@return function?
---@return string?  error_message
---@nodiscard
function loadModule.loadfilesafe(filename, mode, env) end

---Opens the named file and executes its content as a Lua chunk. When called without arguments, `dofile` executes the content of the standard input (`stdin`). Returns all values returned by the chunk. In case of errors, `dofile` propagates the error to its caller. (That is, `dofile` does not run in protected mode.)
---@param filename? string
---@return any ...
function loadModule.dofile(filename) end

---@param executionContext any
---@param args any
---@return any
function loadModule.__require_clr_impl(executionContext, args) end
