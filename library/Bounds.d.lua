---@meta


---@class Bounds
---@field center Vector3
---@field size Vector3
---@field min Vector3
---@field max Vector3
---@field extents Vector3
---@field bounds Bounds
Bounds = {}

---@return Bounds
function Bounds.ToBounds() end

---@param center Vector3
---@param size Vector3
---@return Bounds
function Bounds.New(center, size) end
