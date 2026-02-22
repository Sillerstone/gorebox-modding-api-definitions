---@meta


---@class LayerMask
---@field value integer
LayerMask = {}

---@return LayerMask
function LayerMask.ToLayerMask() end

---@param layerName string
---@return LayerMask
function LayerMask.FromName(layerName) end

---@param layerNames string[]
---@return LayerMask
function LayerMask.FromNames(layerNames) end

---@param layer integer
---@return boolean
function LayerMask.ContainsLayer(layer) end

---@param layer integer
function LayerMask.AddLayer(layer) end

---@param layer integer
function LayerMask.RemoveLayer(layer) end

---@return LayerMask
function LayerMask.Invert() end

---@param other LayerMask
---@return LayerMask
function LayerMask.Combine(other) end

---@param other LayerMask
---@return LayerMask
function LayerMask.Intersect(other) end

---@param layerName string
---@return integer
function LayerMask.GetLayerIndexByName(layerName) end

---@param maskValue integer
---@return LayerMask
function LayerMask.New(maskValue) end
