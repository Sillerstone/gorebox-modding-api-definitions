---@meta


---@class Matrix4x4
---@field m00 number
---@field m01 number
---@field m02 number
---@field m03 number
---@field m10 number
---@field m11 number
---@field m12 number
---@field m13 number
---@field m20 number
---@field m21 number
---@field m22 number
---@field m23 number
---@field m30 number
---@field m31 number
---@field m32 number
---@field m33 number
Matrix4x4 = {}

---@param row0 Vector4
---@param row1 Vector4
---@param row2 Vector4
---@param row3 Vector4
---@return Matrix4x4
function Matrix4x4.New(row0, row1, row2, row3) end

---@return Matrix4x4
function Matrix4x4.ToMatrix4x4() end

---@return Matrix4x4
function Matrix4x4.Identity() end

---@param other Matrix4x4
---@return Matrix4x4
function Matrix4x4.Add(other) end

---@param other Matrix4x4
---@return Matrix4x4
function Matrix4x4.Sub(other) end

---@param scalar number
---@return Matrix4x4
function Matrix4x4.Mul(scalar) end

---@param v Vector4
---@return Vector4
function Matrix4x4.MultiplyVector(v) end

---@param v Vector4
---@return Vector4
function Matrix4x4.MultiplyPoint(v) end

---@param position Vector3
---@param rotation Vector3
---@param scale Vector3
---@return Matrix4x4
function Matrix4x4.TRS(position, rotation, scale) end
