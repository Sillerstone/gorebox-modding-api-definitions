---@meta


---@class Server
---@field host GBMod
Server = {}

---@param data string
function Server.SendServerEvent(data) end

---@param component Component
function Server.AllocateViewID(component) end

---@param msg string
---@param delay number
function Server.SendChatMessage(msg, delay) end

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
function Server.SendRules(ActionCam, BanAIGoreDolls, BanBigExplosives, BanClothes, BanGoreDolls, BanEntities, BanExplosives, BanExplosiveWeapons, BanFood, BanHeavyWeapons, BanLightWeapons, BanMedicine, BanMeleeWeapons, BanNextbots, BanProps, BanRealityCrusher, BanVehicles, CanDropWeapons, DropAllInventoryItemsOnDie, CreatorMode, FriendlyFire, HostBadge, HostSwitchFeed, IgnoredByAI, InfiniteAmmo, InfiniteStamina, Invincibility, KillFeed, NoClip, PlayerConnectionFeed, SlowMo, DisableFists, DisableKicks, KeepInventory, CloseServerOnDisconnect, CanLoadSaves, AllowViceHos, AllowChangesByViceHos, AllowGrab, SpawnAsInfected, RespawnPenalty, GravityMultiplier) end

---@return boolean
function Server.InMultiplayer() end

---@param msg string
function Server.SetObjective(msg) end

---@param time integer
function Server.SetTimer(time) end

---@param msg string
function Server.SetTitle(msg) end

---@param header string
---@param content string
function Server.SendAnnouncement(header, content) end
