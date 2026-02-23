---@meta


---@class Transform
---@field GameObject GameObject
---@field Forward Vector3
---@field Right Vector3
---@field Up Vector3
---@field Position Vector3
---@field LocalPosition Vector3
---@field LocalScale Vector3
---@field Rotation Vector3
---@field LocalRotation Vector3
---@field Parent Transform
---@field ChildCount integer
---@field transform Transform
Transform = {}

---@return boolean
function Transform.IsValid() end

---@param target Transform
---@return Transform
function Transform.GetFromUnity(target) end

---@param target Transform
function Transform.LookAt(target) end

---@return table
function Transform.GetRoots() end

---@param parent Transform
---@param worldPositionStays boolean
function Transform.SetParent(parent, worldPositionStays) end

---@param index integer
---@return Transform
function Transform.GetChild(index) end

function Transform.DetachChildren() end

function Transform.SetAsFirstSibling() end

function Transform.SetAsLastSibling() end

---@param index integer
function Transform.SetSiblingIndex(index) end

---@return integer
function Transform.GetSiblingIndex() end

---@param name string
---@return Transform
function Transform.Find(name) end

---@param player Player
---@return Transform
function Transform.GetPlayer(player) end
