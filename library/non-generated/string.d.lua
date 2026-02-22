---@meta


---@class string
---@field BASE64_DUMP_HEADER string
string = {}

---Returns a string containing a binary representation (a *binary chunk*) of the given function.
---@param f      async fun(...):...
---@param strip? boolean
---@return string
---@nodiscard
function string.dump(f, strip) end

---Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.
---@param byte integer
---@param ... integer
---@return string
---@nodiscard
function string.char(byte, ...) end

---Returns the internal numeric codes of the characters `s[i], s[i+1], ..., s[j]`.
---@param s  string|number
---@param i? integer
---@param j? integer
---@return integer ...
---@nodiscard
function string.byte(s, i, j) end

---@param char string
---@return integer
function string.unicode(char) end

---Returns its length.
---@param s string|number
---@return integer
---@nodiscard
function string.len(s) end

---Looks for the first match of `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/54/manual.html/6.4.1"])) in the string. If it finds one, `match` returns the captures; otherwise it returns nil.
---@param s       string|number
---@param pattern string|number
---@param init?   integer
---@return any ...
---@nodiscard
function string.match(s, pattern, init) end

---Returns an iterator function. Each call to that iterator continues matching `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/54/manual.html/6.4.1"])) over s and returns all captures.
---@param s       string|number
---@param pattern string|number
---@param init?   integer
---@return fun():string, ...
function string.gmatch(s, pattern, init) end

---Returns a copy of s where all occurrences of `pattern` (or the first n occurrences if n is given) are replaced by repl (see [§6.4.1](command:extension.lua.doc?["en-us/54/manual.html/6.4.1"])).
---@param s       string|number
---@param pattern string|number
---@param repl    string|number|table|function
---@param n?      integer
---@return string
---@return integer count
function string.gsub(s, pattern, repl, n) end

---Looks for the first match of `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/54/manual.html/6.4.1"])) in the string.
---@param s       string|number
---@param pattern string|number
---@param init?   integer
---@param plain?  boolean
---@return integer|nil start
---@return integer|nil end
---@return any|nil ... captured
---@nodiscard
function string.find(s, pattern, init, plain) end

---Returns a copy of this string with all uppercase letters changed to lowercase.
---@param s string|number
---@return string
---@nodiscard
function string.lower(s) end

---Returns a copy of this string with all lowercase letters changed to uppercase.
---@param s string|number
---@return string
---@nodiscard
function string.upper(s) end

---Returns a string that is the concatenation of `n` copies of the string `s` separated by the string `sep`.
---@param s    string|number
---@param n    integer
---@param sep? string|number
---@return string
---@nodiscard
function string.rep(s, n, sep) end

---Returns a formatted version of its variable number of arguments following the description given in its first argument.
---@param s string|number
---@param ... any
---@return string
---@nodiscard
function string.format(s, ...) end

---Returns a string that is the string `s` reversed.
---@param s string|number
---@return string
---@nodiscard
function string.reverse(s) end

---Returns the substring of the string that starts at `i` and continues until `j`.
---@param s  string|number
---@param i  integer
---@param j? integer
---@return string
---@nodiscard
function string.sub(s, i, j) end

---@param prefix string
---@return boolean
---@nodiscard
function string.startsWith(prefix) end

---@param suffix string
---@return boolean
---@nodiscard
function string.endsWith(suffix) end

---@param substring string
---@return boolean
---@nodiscard
function string.contains(substring) end
