---@meta


---@class Mesh
---@field mesh Mesh
Mesh = {}

---@return Mesh
function Mesh.New() end

---@param mesh Mesh
---@return Mesh
function Mesh.GetFromUnity(mesh) end

---@return string
function Mesh.Name() end

---@return integer
function Mesh.VertexCount() end

---@return integer
function Mesh.SubMeshCount() end

---@return Vector3[]
function Mesh.GetVertices() end

---@return Vector3[]
function Mesh.GetNormals() end

---@return Vector2[]
function Mesh.GetUV() end

---@return integer[]
function Mesh.GetTriangles() end

---@param vertices Vector3[]
function Mesh.SetVertices(vertices) end

---@param normals Vector3[]
function Mesh.SetNormals(normals) end

---@param uv Vector2[]
function Mesh.SetUV(uv) end

---@param triangles integer[]
function Mesh.SetTriangles(triangles) end

function Mesh.RecalculateNormals() end

function Mesh.RecalculateBounds() end

function Mesh.RecalculateTangents() end
