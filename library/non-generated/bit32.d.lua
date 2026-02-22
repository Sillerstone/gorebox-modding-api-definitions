---@meta


---@class bit32
bit32 = {}

---@param funcName string
---@param args any
---@param accumFunc function
---@return integer
---@nodiscard
function bit32.Bitwise(funcName, args, accumFunc) end

---Returns the unsigned number formed by the bits `field` to `field + width - 1` from `n`.
---@param n      integer
---@param field  integer
---@param width? integer
---@return integer
---@nodiscard
function bit32.extract(n, field, width) end

---Returns a copy of `n` with the bits `field` to `field + width - 1` replaced by the value `v` .
---@param n integer
---@param v integer
---@param field  integer
---@param width? integer
---@nodiscard
function bit32.replace(n, v, field, width) end

---Returns the number `x` shifted `disp` bits to the right. Negative displacements shift to the left.
---
---This shift operation is what is called arithmetic shift. Vacant bits on the left are filled with copies of the higher bit of `x`; vacant bits on the right are filled with zeros.
---@param x    integer
---@param disp integer
---@return integer
---@nodiscard
function bit32.arshift(x, disp) end

---Returns the number `x` shifted `disp` bits to the right. Negative displacements shift to the left. In any direction, vacant bits are filled with zeros.
---@param x     integer
---@param distp integer
---@return integer
---@nodiscard
function bit32.rshift(x, distp) end

---Returns the number `x` shifted `disp` bits to the left. Negative displacements shift to the right. In any direction, vacant bits are filled with zeros.
---@param x     integer
---@param distp integer
---@return integer
---@nodiscard
function bit32.lshift(x, distp) end

---Returns the bitwise *and* of its operands.
---@return integer
---@nodiscard
function bit32.band(...) end

---Returns a boolean signaling whether the bitwise *and* of its operands is different from zero.
---@return boolean
---@nodiscard
function bit32.btest(...) end

---Returns the bitwise *or* of its operands.
---@return integer
---@nodiscard
function bit32.bor(...) end

---Returns the bitwise negation of `x`.
---@param x integer
---@return integer
---@nodiscard
function bit32.bnot(x) end

---Returns the bitwise *exclusive or* of its operands.
---@return integer
---@nodiscard
function bit32.bxor(...) end

---Returns the number `x` rotated `disp` bits to the left. Negative displacements rotate to the right.
---@param x     integer
---@param distp integer
---@return integer
---@nodiscard
function bit32.lrotate(x, distp) end

---Returns the number `x` rotated `disp` bits to the right. Negative displacements rotate to the left.
---@param x     integer
---@param distp integer
---@return integer
---@nodiscard
function bit32.rrotate(x, distp) end
