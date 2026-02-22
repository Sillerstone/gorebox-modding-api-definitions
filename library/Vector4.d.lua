---@meta


---@class Vector4
---@field x number
---@field y number
---@field z number
---@field w number
Vector4 = {}

---@return Vector4
function Vector4.ToVector4() end

---@return Vector3
function Vector4.ToEuler() end

---@return Quaternion
function Vector4.ToQuanterion() end

---@param b Vector4
---@param time number
---@return Vector4
function Vector4.QLerp(b, time) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return Vector4
function Vector4.New(x, y, z, w) end

---@return Vector4
function Vector4.Zero() end

---@return Vector4
function Vector4.One() end

---@param other Vector4
---@return Vector4
function Vector4.Add(other) end

---@param other Vector4
---@return Vector4
function Vector4.Sub(other) end

---@param scalar number
---@return Vector4
function Vector4.Mul(scalar) end

---@param scalar number
---@return Vector4
function Vector4.Div(scalar) end
