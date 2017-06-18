require "./models/*"
require "crystaledge"

module Models
  alias Vec3 = CrystalEdge::Vector3

  record Vertex, coord : Vec3, texcoord : Vec3?, normal : Vec3?

  alias Face = Array(Vertex)

  record Shape, name : String, faces : Array(Face), material : String, subshapes : Array(Shape)
end
