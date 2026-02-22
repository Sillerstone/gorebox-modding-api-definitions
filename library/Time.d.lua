---@meta


---@class Time
---@field TimeScale number
---@field DeltaTime number
---@field UnscaledDeltaTime number
Time = {}

---@return integer
function Time.GetRealTime() end

---@return integer
function Time.GetRealTimeMs() end
