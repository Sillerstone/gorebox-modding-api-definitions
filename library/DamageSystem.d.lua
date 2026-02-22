---@meta


---@class DamageSystem
---@field Health number
---@field MaxHealth number
---@field CollisionMagnitude number
---@field Name string
---@field damageSystemType DSType
---@field DS DamageSystem
---@field PDS PlayerDamageSystem
---@field PhysDS PhysicsDamageSystem
---@field ObjectDS ObjectDamageSystem
DamageSystem = {}

---@param damage number
---@param bldMultiper number
---@param dismember boolean
function DamageSystem.TakeDamage(damage, bldMultiper, dismember) end
