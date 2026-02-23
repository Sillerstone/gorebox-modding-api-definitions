---@meta


---@class PlayerMaster
---@field Cripple boolean
---@field Grounded boolean
---@field Ragdolled boolean
---@field TrirdPersonCameraUp number
---@field TrirdPersonCameraFollowDistance number
---@field CurrentItem integer
---@field Speed number
---@field Endurance number
---@field Dexterity number
---@field Stamina number
---@field Invisible boolean
---@field InfiniteStamina boolean
---@field CreatorMode boolean
---@field NoReloading boolean
---@field InfiniteAmmo boolean
---@field NoclipPerms boolean
---@field IgnoredByAI boolean
---@field HideUI boolean
---@field ActionCam boolean
---@field RenderHands boolean
---@field RenderLegs boolean
---@field InUI boolean
---@field InBoss boolean
---@field Currency integer
---@field Adrenaline number
---@field Pain number
---@field Poison number
---@field Dizzyness number
---@field Air number
---@field Blood integer
---@field Condition number
---@field RCV2Mode integer
---@field CurrentWeaponName string
---@field SpawnablePath string
PlayerMaster = {}

---@param ignoreColldown boolean
function PlayerMaster.Ragdoll(ignoreColldown) end

---@return boolean
function PlayerMaster.GetInThirdPerson() end

---@param target Component
---@param emoteSwitch boolean
function PlayerMaster.Do3rdPerson(target, emoteSwitch) end

function PlayerMaster.GetUp() end

function PlayerMaster.HealFully() end

---@param cooldown number
---@param velocity Vector3
function PlayerMaster.Knockdown(cooldown, velocity) end

---@return string[]
function PlayerMaster.GetLimbs() end

---@param damage number
---@param bleed number
---@param limb string
function PlayerMaster.Damage(damage, bleed, limb) end

---@param damage number
---@param limb string
function PlayerMaster.Heal(damage, limb) end

---@param thirdPerson boolean
function PlayerMaster.Kill(thirdPerson) end

---@param emoteName string
function PlayerMaster.Emote(emoteName) end

function PlayerMaster.EndEmote() end

---@param Name string
---@param ammo integer
---@param color Vector3
---@param extraMag integer
---@param skin integer
---@param scope integer
---@param barrel integer
---@param shield boolean
function PlayerMaster.GiveWeapon(Name, ammo, color, extraMag, skin, scope, barrel, shield) end

---@param Name string
function PlayerMaster.RemoveWeapon(Name) end

---@param index integer
function PlayerMaster.DropWeapon(index) end

function PlayerMaster.ClearWeapons() end

---@param value number
function PlayerMaster.SetScale(value) end

---@return any
function PlayerMaster.GetHeldWeaponInfo() end

---@param team string
function PlayerMaster.SetTeam(team) end

---@param Amount integer
function PlayerMaster.DropCurrency(Amount) end

---@return boolean
function PlayerMaster.IsValid() end
