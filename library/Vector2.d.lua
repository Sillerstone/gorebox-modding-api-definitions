---@meta


---@class Vector2
---@field x number
---@field y number
Vector2 = {}

---@return Vector2
function Vector2.ToVector2() end

---@param x number
---@param y number
---@return Vector2
function Vector2.New(x, y) end

---@return Vector2
function Vector2.Zero() end

---@return Vector2
function Vector2.One() end

---@return Vector2
function Vector2.Up() end

---@return Vector2
function Vector2.Down() end

---@return Vector2
function Vector2.Left() end

---@return Vector2
function Vector2.Right() end

---@param other Vector2
---@return Vector2
function Vector2.Add(other) end

---@param other Vector2
---@return Vector2
function Vector2.Sub(other) end

---@param scalar number
---@return Vector2
function Vector2.Mul(scalar) end

---@param scalar number
---@return Vector2
function Vector2.Div(scalar) end
