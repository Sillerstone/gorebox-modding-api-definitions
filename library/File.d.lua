---@meta


---@class File
File = {}

---@return string
function File.GetModName() end

---@return string
function File.GetModDescription() end

---@return string
function File.GetModVersion() end

---@return string
function File.GetCurrentPlatform() end

---@return string
function File.GetModSize() end

---@param code string
---@param lua Script
---@return any
function File.DoString(code, lua) end

---@overload fun(relativePath: string): any
---@param relativePath string
---@param lua Script
---@return any
function File.DoFile(relativePath, lua) end

---@return string
function File.GetModRoot() end

---@return string
function File.GetModsRoot() end

---@param path string
---@return boolean
function File.FolderExist(path) end

---@param path string
---@return boolean
function File.FileExist(path) end

---@param tpath string
function File.CreateFolder(tpath) end

---@param relativePath string
---@return table
function File.GetAllFolders(relativePath) end

---@param relativePath string
---@return table
function File.GetAllFiles(relativePath) end

---@param path string
---@param data table
function File.ExportFileBytes(path, data) end

---@param path string
---@return table
function File.ImportFileBytes(path) end

---@param path string
---@param content string
function File.ExportFile(path, content) end

---@param path string
---@param content string
---@return string
function File.ImportFile(path, content) end

---@param key string
---@param defValue number
---@return number
function File.GetPlayerPrefsVal(key, defValue) end

---@param key string
---@param value number
function File.SetPlayerPrefsVal(key, value) end

---@param key string
---@param defValue string
---@return string
function File.GetPlayerPrefsStr(key, defValue) end

---@param key string
---@param value string
function File.SetPlayerPrefsStr(key, value) end
