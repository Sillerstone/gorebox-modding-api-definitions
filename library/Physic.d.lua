---@meta


---@class Physic
---@field Gravity Vector3
---@field _host GBMod
Physic = {}

---@param coll1 Component
---@param coll2 Component
---@param state boolean
function Physic.IgnoreCollision(coll1, coll2, state) end

---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask LayerMask
---@return RaycastInfo
function Physic.Raycast(origin, direction, maxDistance, layerMask) end

---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return RaycastInfo
function Physic.Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@param start Vector3
---@param endArgument Vector3
---@param layerMask LayerMask
---@return RaycastInfo
function Physic.Linecast(start, endArgument, layerMask) end

---@param start Vector3
---@param endArgument Vector3
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return RaycastInfo
function Physic.Linecast(start, endArgument, layerMask, queryTriggerInteraction) end

---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask LayerMask
---@return RaycastInfo[]
function Physic.RaycastAll(origin, direction, maxDistance, layerMask) end

---@param origin Vector3
---@param direction Vector3
---@param maxDistance number
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return RaycastInfo[]
function Physic.RaycastAll(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@param origin Vector3
---@param direction Vector3
---@param maxResults integer
---@param maxDistance number
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return RaycastInfo[]
function Physic.RaycastNonAlloc(origin, direction, maxResults, maxDistance, layerMask, queryTriggerInteraction) end

---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask LayerMask
---@return RaycastInfo
function Physic.SphereCast(origin, radius, direction, maxDistance, layerMask) end

---@param origin Vector3
---@param radius number
---@param direction Vector3
---@param maxDistance number
---@param layerMask LayerMask
---@return RaycastInfo[]
function Physic.SphereCastAll(origin, radius, direction, maxDistance, layerMask) end

---@param position Vector3
---@param radius number
---@param layerMask LayerMask
---@return boolean
function Physic.CheckSphere(position, radius, layerMask) end

---@param position Vector3
---@param radius number
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return boolean
function Physic.CheckSphere(position, radius, layerMask, queryTriggerInteraction) end

---@param center Vector3
---@param halfExtents Vector3
---@param rotation Vector4
---@param layerMask LayerMask
---@return boolean
function Physic.CheckBox(center, halfExtents, rotation, layerMask) end

---@param center Vector3
---@param halfExtents Vector3
---@param rotation Vector4
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return boolean
function Physic.CheckBox(center, halfExtents, rotation, layerMask, queryTriggerInteraction) end

---@param pointA Vector3
---@param pointB Vector3
---@param radius number
---@param layerMask LayerMask
---@return boolean
function Physic.CheckCapsule(pointA, pointB, radius, layerMask) end

---@param pointA Vector3
---@param pointB Vector3
---@param radius number
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return boolean
function Physic.CheckCapsule(pointA, pointB, radius, layerMask, queryTriggerInteraction) end

---@param center Vector3
---@param radius number
---@param layerMask LayerMask
---@return Transform[]
function Physic.OverlapSphere(center, radius, layerMask) end

---@param center Vector3
---@param radius number
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return Transform[]
function Physic.OverlapSphere(center, radius, layerMask, queryTriggerInteraction) end

---@param center Vector3
---@param radius number
---@param maxResults integer
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return Transform[]
function Physic.OverlapSphereNonAlloc(center, radius, maxResults, layerMask, queryTriggerInteraction) end

---@param center Vector3
---@param halfExtents Vector3
---@param rotation Vector4
---@param layerMask LayerMask
---@return Transform[]
function Physic.OverlapBox(center, halfExtents, rotation, layerMask) end

---@param center Vector3
---@param halfExtents Vector3
---@param rotation Vector4
---@param maxResults integer
---@param layerMask LayerMask
---@param queryTriggerInteraction integer
---@return Transform[]
function Physic.OverlapBoxNonAlloc(center, halfExtents, rotation, maxResults, layerMask, queryTriggerInteraction) end

---@param pointA Vector3
---@param pointB Vector3
---@param radius number
---@param layerMask LayerMask
---@return Transform[]
function Physic.OverlapCapsule(pointA, pointB, radius, layerMask) end

---@param point Vector3
---@param colliderComponent Component
---@return Vector3
function Physic.ClosestPointToCollider(point, colliderComponent) end

---@param aComp Component
---@param aPos Vector3
---@param aRot Vector4
---@param bComp Component
---@param bPos Vector3
---@param bRot Vector4
---@return PenetrationInfo
function Physic.ComputePenetration(aComp, aPos, aRot, bComp, bPos, bRot) end

---@param aComp Component
---@param bComp Component
---@return number
function Physic.DistanceBetweenColliders(aComp, bComp) end

---@param point Vector3
---@param target Transform
---@return Vector3
function Physic.ClosestPoint(point, target) end
