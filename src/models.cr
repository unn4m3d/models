require "./models/*"
require "crystaledge"

module Models
  alias Vec3 = CrystalEdge::Vector3

  record Vertex, coord : Vec3, texcoord : Vec3?, normal : Vec3?

  alias Face = Array(Vertex)

  class Shape
    property name : String
    property faces : Array(Face)
    property material : String
    property subshapes : Array(Shape)

    def initialize(@name, @faces, @material, @subshapes)
    end
  end
end
