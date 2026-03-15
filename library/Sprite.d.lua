---@meta


---@class Sprite
---@field sprite Sprite
---@field Texture Texture
Sprite = {}

---@return UnknownType
function Sprite.ToUnknownType() end

---@param texture Texture
---@return Sprite
function Sprite.New(texture) end

---@return boolean
function Sprite.IsValid() end

---@return integer
function Sprite.GetWidth() end

---@return integer
function Sprite.GetHeight() end
