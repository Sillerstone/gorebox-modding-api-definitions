---@meta


---@class EventListener
---@field rigidbody Rigidbody
---@field collider Collider
---@field OnTriggerEnter Event
---@field OnTriggerExit Event
---@field OnTriggerStay Event
---@field OnTriggerEnterWithCollider Event
---@field OnTriggerExitWithCollider Event
---@field OnTriggerStayWithCollider Event
---@field OnCollisionEnter Event
---@field OnCollisionExit Event
---@field OnCollisionStay Event
---@field OnCollisionEnterWithCollision Event
---@field OnCollisionExitWithCollision Event
---@field OnCollisionStayWithCollision Event
---@field OnMouseDown Event
---@field OnMouseUp Event
---@field OnMouseEnter Event
---@field OnMouseExit Event
---@field OnMouseOver Event
---@field OnBecameVisible Event
---@field OnBecameInvisible Event
EventListener = {}

function EventListener.InvokeTriggerEnter() end

function EventListener.InvokeTriggerExit() end

function EventListener.InvokeTriggerStay() end

---@param other Collider
function EventListener.InvokeTriggerEnterWithCollider(other) end

---@param other Collider
function EventListener.InvokeTriggerExitWithCollider(other) end

---@param other Collider
function EventListener.InvokeTriggerStayWithCollider(other) end

function EventListener.InvokeCollisionEnter() end

function EventListener.InvokeCollisionExit() end

function EventListener.InvokeCollisionStay() end

---@param collision Collision
function EventListener.InvokeCollisionEnterWithCollision(collision) end

---@param collision Collision
function EventListener.InvokeCollisionExitWithCollision(collision) end

---@param collision Collision
function EventListener.InvokeCollisionStayWithCollision(collision) end

function EventListener.InvokeMouseDown() end

function EventListener.InvokeMouseUp() end

function EventListener.InvokeMouseEnter() end

function EventListener.InvokeMouseExit() end

function EventListener.InvokeMouseOver() end

function EventListener.InvokeBecameVisible() end

function EventListener.InvokeBecameInvisible() end
