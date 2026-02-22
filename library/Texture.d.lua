---@meta


---@class Texture
---@field texture Texture2D
Texture = {}

---@return integer
function Texture.GetWidth() end

---@return integer
function Texture.GetHeight() end

---@return boolean
function Texture.IsValid() end

---@return Vector4[]
function Texture.GetPixels() end

---@param px Vector4[]
function Texture.SetPixels(px) end

---@return Sprite
function Texture.ToSprite() end
