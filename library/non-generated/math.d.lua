---@meta


---@class math
---The value of *π*.
---@field pi number
---A value larger than any other numeric value.
---@field huge number
math = {}

---Returns the absolute value of `x`.
---@generic Number: number
---@param x Number
---@return Number
---@nodiscard
function math.abs(x) end

---Returns the arc cosine of `x` (in radians).
---@param x number
---@return number
---@nodiscard
function math.acos(x) end

---Returns the arc sine of `x` (in radians).
---@param x number
---@return number
---@nodiscard
function math.asin(x) end

---Returns the arc tangent of `y/x` (in radians).
---@param y  number
---@param x? number
---@return number
---@nodiscard
function math.atan(y, x) end

---Returns the arc tangent of `y/x` (in radians).
---@param y number
---@param x number
---@return number
---@nodiscard
function math.atan2(y, x) end

---Returns the smallest integral value larger than or equal to `x`.
---@param x number
---@return integer
---@nodiscard
function math.ceil(x) end

---Returns the cosine of `x` (assumed to be in radians).
---@param x number
---@return number
---@nodiscard
function math.cos(x) end

---Returns the hyperbolic cosine of `x` (assumed to be in radians).
---@param x number
---@return number
---@nodiscard
function math.cosh(x) end

---Converts the angle `x` from radians to degrees.
---@param x number
---@return number
---@nodiscard
function math.deg(x) end

---Returns the value `e^x` (where `e` is the base of natural logarithms).
---@param x number
---@return number
---@nodiscard
function math.exp(x) end

---Returns the largest integral value smaller than or equal to `x`.
---@param x number
---@return integer
---@nodiscard
function math.floor(x) end

---Returns the remainder of the division of `x` by `y` that rounds the quotient towards zero.
---@param x number
---@param y number
---@return number
---@nodiscard
function math.fmod(x, y) end

---Returns two numbers `m` and `e` such that `x = m * (2 ^ e)`, where `e` is an integer. When `x` is zero, NaN, +inf, or -inf, `m` is equal to `x`; otherwise, the absolute value of `m` is in the range [0.5, 1).
---@param x number
---@return number m
---@return number e
---@nodiscard
function math.frexp(x) end

---Returns `m * (2 ^ e)`, where `e` is an integer.
---@param m number
---@param e number
---@return number
---@nodiscard
function math.ldexp(m, e) end

---Returns the logarithm of `x` in the given base.
---@param x     number
---@param base? integer
---@return number
---@nodiscard
function math.log(x, base) end

---Returns the argument with the maximum value, according to the Lua operator `<`.
---@generic Number: number
---@param x Number
---@param ... Number
---@return Number
---@nodiscard
function math.max(x, ...) end

---Returns the argument with the minimum value, according to the Lua operator `<`.
---@generic Number: number
---@param x Number
---@param ... Number
---@return Number
---@nodiscard
function math.min(x, ...) end

---Returns the integral part of `x` and the fractional part of `x`.
---@param x number
---@return integer
---@return number
---@nodiscard
function math.modf(x) end

---Returns `x ^ y` .
---@param x number
---@param y number
---@return number
---@nodiscard
function math.pow(x, y) end

---Converts the angle `x` from degrees to radians.
---@param x number
---@return number
---@nodiscard
function math.rad(x) end

---* `math.random()`: Returns a float in the range [0,1).
---* `math.random(n)`: Returns a integer in the range [1, n].
---* `math.random(m, n)`: Returns a integer in the range [m, n].
---@overload fun():number
---@overload fun(m: integer):integer
---@param m integer
---@param n integer
---@return integer
---@nodiscard
---@diagnostic disable-next-line: redundant-parameter
function math.random(m, n) end

---* `math.randomseed(x, y)`: Concatenate `x` and `y` into a 128-bit `seed` to reinitialize the pseudo-random generator.
---* `math.randomseed(x)`: Equate to `math.randomseed(x, 0)` .
---* `math.randomseed()`: Generates a seed with a weak attempt for randomness.
---@param x? integer
---@param y? integer
function math.randomseed(x, y) end

---Returns the sine of `x` (assumed to be in radians).
---@param x number
---@return number
---@nodiscard
function math.sin(x) end

---Returns the hyperbolic sine of `x` (assumed to be in radians).
---@param x number
---@return number
---@nodiscard
function math.sinh(x) end

---Returns the square root of `x`.
---@param x number
---@return number
---@nodiscard
function math.sqrt(x) end

---Returns the tangent of `x` (assumed to be in radians).
---@param x number
---@return number
---@nodiscard
function math.tan(x) end

---Returns the hyperbolic tangent of `x` (assumed to be in radians).
---@param x number
---@return number
---@nodiscard
function math.tanh(x) end
