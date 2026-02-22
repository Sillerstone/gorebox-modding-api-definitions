---@meta


---@class GoreDollMaster
---@field Condition number
---@field Dizzyness number
---@field Resistance number
---@field Crawling boolean
---@field Paralyzed boolean
---@field BrainDamage boolean
---@field Hurt boolean
---@field Mute boolean
---@field Infected boolean
---@field Blood integer
---@field Team string
---@field Host GoreDollHost
GoreDollMaster = {}

function GoreDollMaster.TakeBrainDamage() end

function GoreDollMaster.StopHeartFunctions() end

function GoreDollMaster.SetRandomScale() end

function GoreDollMaster.AssignRandomSkin() end

function GoreDollMaster.Choke() end

function GoreDollMaster.Knockout() end

---@param time number
function GoreDollMaster.KnockoutTimed(time) end

function GoreDollMaster.WakeUp() end

function GoreDollMaster.DropWeapon() end

function GoreDollMaster.StopBrainFunctions() end

---@param limb string
---@param damage number
---@param bldMultiper number
---@param dismember boolean
function GoreDollMaster.TakeDamage(limb, damage, bldMultiper, dismember) end
