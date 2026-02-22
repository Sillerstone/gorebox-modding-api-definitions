---@meta


---@class GUI
GUI = {}

---@return Vector4
function GUI.GetColor() end

---@param c Vector4
function GUI.SetColor(c) end

---@return Vector4
function GUI.GetBackgroundColor() end

---@param c Vector4
function GUI.SetBackgroundColor(c) end

---@return Vector4
function GUI.GetContentColor() end

---@param c Vector4
function GUI.SetContentColor(c) end

function GUI.ResetColors() end

---@param rect Vector4
---@param label string
---@param style GUIStyle
---@return boolean
function GUI.ButtonRect(rect, label, style) end

---@param rect Vector4
---@param tex Texture
---@param style GUIStyle
---@return boolean
function GUI.ButtonRectTexture(rect, tex, style) end

---@param rect Vector4
---@param label string
---@param style GUIStyle
---@return boolean
function GUI.RepeatButtonRect(rect, label, style) end

---@param rect Vector4
---@param label string
---@param style GUIStyle
function GUI.Box(rect, label, style) end

---@param rect Vector4
---@param texture Texture
function GUI.Box(rect, texture) end

---@param label string
---@param width number
---@param height number
---@param style GUIStyle
function GUI.Box(label, width, height, style) end

---@param rect Vector4
---@param label string
---@param style GUIStyle
function GUI.LabelRect(rect, label, style) end

---@param rect Vector4
---@param tex Texture
---@param scaleMode string
---@param alphaBlend boolean
---@param imageAspect number
function GUI.DrawTexture(rect, tex, scaleMode, alphaBlend, imageAspect) end

---@param rect Vector4
---@param value boolean
---@param label string
---@param style GUIStyle
---@return boolean
function GUI.ToggleRect(rect, value, label, style) end

---@param label string
---@param width number
---@param height number
---@param style GUIStyle
---@return boolean
function GUI.Button(label, width, height, style) end

---@param label string
---@param width number
---@param height number
---@param style GUIStyle
---@return boolean
function GUI.RepeatButton(label, width, height, style) end

---@param value boolean
---@param label string
---@param width number
---@param height number
---@param style GUIStyle
---@return boolean
function GUI.Toggle(value, label, width, height, style) end

---@param label string
---@param width number
---@param height number
---@param style GUIStyle
function GUI.Label(label, width, height, style) end

---@param text string
---@param maxLength integer
---@param width number
---@param height number
---@param style GUIStyle
---@return string
function GUI.TextField(text, maxLength, width, height, style) end

---@param password string
---@param maskChar string
---@param maxLength integer
---@param width number
---@param height number
---@param style GUIStyle
---@return string
function GUI.PasswordField(password, maskChar, maxLength, width, height, style) end

---@param text string
---@param maxLength integer
---@param width number
---@param height number
---@param style GUIStyle
---@return string
function GUI.TextArea(text, maxLength, width, height, style) end

---@param value number
---@param leftValue number
---@param rightValue number
---@param width number
---@param height number
---@return number
function GUI.HorizontalSlider(value, leftValue, rightValue, width, height) end

---@param value number
---@param topValue number
---@param bottomValue number
---@param width number
---@param height number
---@return number
function GUI.VerticalSlider(value, topValue, bottomValue, width, height) end

---@param rect Vector4
---@param value number
---@param leftValue number
---@param rightValue number
---@return number
function GUI.SliderRect(rect, value, leftValue, rightValue) end

---@return Vector4
function GUI.GetLastRect() end

---@param rect Vector4
function GUI.BeginArea(rect) end

function GUI.EndArea() end

function GUI.BeginHorizontal() end

function GUI.EndHorizontal() end

function GUI.BeginVertical() end

function GUI.EndVertical() end

---@param scrollPos Vector2
---@param width number
---@param height number
---@return Vector2
function GUI.BeginScrollView(scrollPos, width, height) end

function GUI.EndScrollView() end

---@param pixels number
function GUI.Space(pixels) end

function GUI.FlexibleSpace() end

function GUI.Separator() end

---@return GUIStyle
function GUI.NewStyle() end

---@param start Vector2
---@param endArgument Vector2
---@param color Vector4
---@param width number
function GUI.DrawLine(start, endArgument, color, width) end
