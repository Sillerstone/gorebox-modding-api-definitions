---@meta


---@class ResourceImporter
ResourceImporter = {}

---@param path string
---@return Texture
function ResourceImporter.ImportTexture(path) end

---@param path string
---@return AudioClip
function ResourceImporter.ImportAudioClip(path) end

---@param path string
---@return any
function ResourceImporter.ImportModel(path) end

---@param width integer
---@param height integer
---@param pixels Vector4[]
---@return Texture
function ResourceImporter.CreateTexture(width, height, pixels) end

---@param pathToBundle string
---@param resourcePath string
---@return any
function ResourceImporter.LoadGameObjectFromAssetBundle(pathToBundle, resourcePath) end

---@param pathToBundle string
---@param resourcePath string
---@return Material
function ResourceImporter.LoadMaterialFromAssetBundle(pathToBundle, resourcePath) end

---@param pathToBundle string
---@param resourcePath string
---@return Texture
function ResourceImporter.LoadTextureFromAssetBundle(pathToBundle, resourcePath) end

---@param pathToBundle string
---@param resourcePath string
---@return Sprite
function ResourceImporter.LoadSpriteFromAssetBundle(pathToBundle, resourcePath) end

---@param pathToBundle string
---@param resourcePath string
---@return Mesh
function ResourceImporter.LoadMeshFromAssetBundle(pathToBundle, resourcePath) end

---@param pathToBundle string
---@param resourcePath string
---@return string
function ResourceImporter.LoadShaderFromAssetBundle(pathToBundle, resourcePath) end

---@param bundlePath string
---@param sceneName string
function ResourceImporter.LoadSceneFromAssetBundle(bundlePath, sceneName) end
