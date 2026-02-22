---@meta


---@class Input
---@field LockedMouse boolean
---@field GyroscopeEnabled boolean
Input = {}

---@param key string
---@return boolean
function Input.GetKeyDown(key) end

---@param key string
---@return boolean
function Input.GetKeyUp(key) end

---@param key string
---@return boolean
function Input.GetKey(key) end

---@param key string
---@return boolean
function Input.GetButtonDown(key) end

---@param key string
---@return boolean
function Input.GetButtonUp(key) end

---@param key string
---@return boolean
function Input.GetButton(key) end

---@param btnName string
---@param pressed boolean
function Input.SetButton(btnName, pressed) end

---@return table
function Input.GetPressedKeys() end

---@return table
function Input.GetPressedKeysDown() end

---@return table
function Input.GetPressedKeysUp() end

---@return table
function Input.GetPressedButtons() end

---@return table
function Input.GetPressedButtonsDown() end

---@return table
function Input.GetPressedButtonsUp() end

---@return Vector2
function Input.GetScreenRect() end

---@return Vector2
function Input.GetMousePosition() end

---@param axis string
---@return number
function Input.GetAxis(axis) end

---@return integer
function Input.GetTouchCount() end

---@param index integer
---@return InputTouchInfo
function Input.GetTouch(index) end

---@return Vector4
function Input.GetDeviceAttitude() end

---@return Vector3
function Input.GetDeviceGravity() end

---@return Vector3
function Input.GetDeviceAcceleration() end

---@return Vector3
function Input.GetRotationRate() end

---@return boolean
function Input.GetGyroscopeSupported() end

---@return any
function Input.GetDeviceInfo() end

---@return Vector3
function Input.GetAcceleration() end

---@param key integer
---@return boolean
function Input.GetMouseDown(key) end

---@param key integer
---@return boolean
function Input.GetMouseUp(key) end

---@param key integer
---@return boolean
function Input.GetMouse(key) end
