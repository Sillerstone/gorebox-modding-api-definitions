---@meta


---@class Material
---@field mat Material
---@field targetRenderer Renderer
---@field metallic number
---@field smoothness number
---@field normalMap Texture
---@field emissionColor Vector4
---@field emissionMap Texture
---@field mainTexture Texture
---@field transparent boolean
---@field shader string
---@field color Vector4
Material = {}

---@return Material
function Material.Create() end

---@param name string
---@return boolean
function Material.HasProperty(name) end

---@param name string
---@param value number
function Material.SetFloatProperty(name, value) end

---@param name string
---@return number
function Material.GetFloatProperty(name) end

---@param name string
---@param value integer
function Material.SetIntProperty(name, value) end

---@param name string
---@return integer
function Material.GetIntProperty(name) end

---@param name string
---@param value Vector4
function Material.SetColorProperty(name, value) end

---@param name string
---@return Vector4
function Material.GetColorProperty(name) end

---@param name string
---@param value Vector4
function Material.SetVectorProperty(name, value) end

---@param name string
---@return Vector4
function Material.GetVectorProperty(name) end

---@param name string
---@param tex Texture
function Material.SetTextureProperty(name, tex) end

---@param name string
---@return Texture
function Material.GetTextureProperty(name) end

---@return string[]
function Material.GetAllShaderProperties() end

---@param keyword string
function Material.EnableKeyword(keyword) end

---@param keyword string
function Material.DisableKeyword(keyword) end

---@param keyword string
---@return boolean
function Material.IsKeywordEnabled(keyword) end

---@param tag string
---@param currentRenderer boolean
---@return string
function Material.GetTag(tag, currentRenderer) end

---@param tag string
---@param value string
function Material.SetOverrideTag(tag, value) end

---@param bundlePath string
---@param shaderName string
---@param mod GBMod
function Material.SetShaderFromAssetBundle(bundlePath, shaderName, mod) end
