---@meta


---@class EnvironmentMaster
---@field Time number
---@field MinutesPerSecond number
EnvironmentMaster = {}

---@param time number
---@param dayNightCycle boolean
---@param enq integer
---@param Rain boolean
---@param HasThunder boolean
---@param Snow boolean
function EnvironmentMaster.SetWeather(time, dayNightCycle, enq, Rain, HasThunder, Snow) end

function EnvironmentMaster.GenerateNavMesh() end

---@return string
function EnvironmentMaster.GetCurrentScene() end

---@param sceneName string
function EnvironmentMaster.LoadScene(sceneName) end
