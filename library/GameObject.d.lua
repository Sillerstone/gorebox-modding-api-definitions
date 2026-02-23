---@meta


---@class GameObject
---@field Name string
---@field Active boolean
---@field Layer integer
---@field Tag string
---@field Material Material
---@field Transform Transform
---@field go GameObject
GameObject = {}

---@return boolean
function GameObject.IsValid() end

---@param target GameObject
---@return GameObject
function GameObject.GetFromUnity(target) end

---@return EventListener
function GameObject.AddEventListener() end

function GameObject.RemoveEventListener() end

---@return boolean
function GameObject.HaveEventListener() end

---@return GoreDollMaster
function GameObject.GetGoreDollMaster() end

---@return DamageSystem
function GameObject.GetDamageSystem() end

---@return DamageSystem
function GameObject.AddDamageSystem() end

function GameObject.RemoveDamageSystem() end

---@param name string
---@return Component
function GameObject.GetComponent(name) end

---@param name string
---@return Component
function GameObject.GetComponentInChildren(name) end

---@param name string
---@return Component
function GameObject.GetComponentInParent(name) end

---@return Component[]
function GameObject.GetComponents() end

---@return Player
function GameObject.Owner() end

---@param newOwner Player
function GameObject.TransferOwnership(newOwner) end

---@param name string
---@return Component
function GameObject.AddComponent(name) end

---@param name string
function GameObject.RemoveComponent(name) end

---@param name string
---@return Component[]
function GameObject.GetComponentsInChildren(name) end

---@return string
function GameObject.GetSpawnPath() end

---@param name string
---@return Component[]
function GameObject.GetComponentsInParent(name) end

---@param name string
---@return GameObject
function GameObject.FindByName(name) end

---@param tagName string
---@return GameObject[]
function GameObject.FindAllByTag(tagName) end

---@param cName string
---@return GameObject[]
function GameObject.FindAllByComponent(cName) end

---@param path string
---@return GameObject
function GameObject.Instantiate(path) end

---@param path string
---@return GameObject
function GameObject.InstantiateLocal(path) end

---@param path string
---@return GameObject
function GameObject.InstantiatePermanent(path) end

---@param name string
---@return GameObject
function GameObject.Create(name) end

---@param original GameObject
---@return GameObject
function GameObject.Copy(original) end

function GameObject.ClearObjects() end

---@param delay number
function GameObject.DestroyLocal(delay) end

---@param methodName string
---@param target Player
---@param args table
function GameObject.RPC(methodName, target, args) end

function GameObject.Destroy() end
