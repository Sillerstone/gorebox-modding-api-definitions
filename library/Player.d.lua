---@meta


---@class Player
---@field IsCriminal boolean
---@field Criminality number
---@field CriminalityLevel integer
---@field Team string
---@field host GBMod
---@field player Player
Player = {}

---@return Player
function Player.GetLocal() end

---@return Player[]
function Player.GetAllPlayers() end

---@return Transform
function Player.GetCharacter() end

---@return string
function Player.GetName() end

---@return string
function Player.GetID() end

---@return integer
function Player.GetBadgeID() end

---@return boolean
function Player.GetSpeaking() end

---@return boolean
function Player.GetMuted() end

---@return boolean
function Player.IsHost() end

---@return integer
function Player.GetCash() end

---@param count integer
function Player.GiveCash(count) end

---@param count integer
function Player.RemoveCash(count) end

---@param position Vector3
function Player.Teleport(position) end

---@overload fun(msg: string)
---@param msg string
---@param delay number
function Player.SendChatMessage(msg, delay) end

---@param msg string
---@param color Vector3
---@param importance integer
---@param shake number
---@param reset boolean
function Player.ShowSubtitles(msg, color, importance, shake, reset) end

---@param ActionCam boolean
---@param BanAIGoreDolls boolean
---@param BanBigExplosives boolean
---@param BanClothes boolean
---@param BanGoreDolls boolean
---@param BanEntities boolean
---@param BanExplosives boolean
---@param BanExplosiveWeapons boolean
---@param BanFood boolean
---@param BanHeavyWeapons boolean
---@param BanLightWeapons boolean
---@param BanMedicine boolean
---@param BanMeleeWeapons boolean
---@param BanNextbots boolean
---@param BanProps boolean
---@param BanRealityCrusher boolean
---@param BanVehicles boolean
---@param CanDropWeapons boolean
---@param DropAllInventoryItemsOnDie boolean
---@param CreatorMode boolean
---@param FriendlyFire boolean
---@param HostBadge boolean
---@param HostSwitchFeed boolean
---@param IgnoredByAI boolean
---@param InfiniteAmmo boolean
---@param InfiniteStamina boolean
---@param Invincibility boolean
---@param KillFeed boolean
---@param NoClip boolean
---@param PlayerConnectionFeed boolean
---@param SlowMo boolean
---@param DisableFists boolean
---@param DisableKicks boolean
---@param KeepInventory boolean
---@param CloseServerOnDisconnect boolean
---@param CanLoadSaves boolean
---@param AllowViceHos boolean
---@param AllowChangesByViceHos boolean
---@param AllowGrab boolean
---@param SpawnAsInfected boolean
---@param RespawnPenalty number
---@param GravityMultiplier number
function Player.SendRules(ActionCam, BanAIGoreDolls, BanBigExplosives, BanClothes, BanGoreDolls, BanEntities, BanExplosives, BanExplosiveWeapons, BanFood, BanHeavyWeapons, BanLightWeapons, BanMedicine, BanMeleeWeapons, BanNextbots, BanProps, BanRealityCrusher, BanVehicles, CanDropWeapons, DropAllInventoryItemsOnDie, CreatorMode, FriendlyFire, HostBadge, HostSwitchFeed, IgnoredByAI, InfiniteAmmo, InfiniteStamina, Invincibility, KillFeed, NoClip, PlayerConnectionFeed, SlowMo, DisableFists, DisableKicks, KeepInventory, CloseServerOnDisconnect, CanLoadSaves, AllowViceHos, AllowChangesByViceHos, AllowGrab, SpawnAsInfected, RespawnPenalty, GravityMultiplier) end

---@param air number
---@param speed number
---@param newRes number
---@param adrenaline number
function Player.SyncWorkout(air, speed, newRes, adrenaline) end

---@param msg string
function Player.SetObjective(msg) end

---@param time integer
function Player.SetTimer(time) end

---@param msg string
function Player.SetTitle(msg) end

---@param header string
---@param content string
function Player.SendAnnouncement(header, content) end

function Player.Kick() end

function Player.Ban() end
