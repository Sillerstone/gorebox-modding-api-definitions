---@meta


---@class Vector3
---@field _host GBMod
---@field x number
---@field y number
---@field z number
---@field Zero Vector3
---@field One Vector3
---@field Up Vector3
---@field Down Vector3
Vector3 = {}

---@return Vector3
function Vector3.ToVector3() end

---@param x number
---@param y number
---@param z number
---@return Vector3
function Vector3.New(x, y, z) end

---@param other Vector3
---@return Vector3
function Vector3.Add(other) end

---@param other Vector3
---@return Vector3
function Vector3.Sub(other) end

---@param scalar number
---@return Vector3
function Vector3.Mul(scalar) end

---@param scalar number
---@return Vector3
function Vector3.Div(scalar) end

---@param other Vector3
---@return Vector4
function Vector3.ToQuanterion(other) end

---@param b Vector3
---@param time number
---@return Vector3
function Vector3.Lerp(b, time) end
