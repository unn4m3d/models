require "./models/*"
require "crystaledge"

module Models
  alias Vec3 = CrystalEdge::Vector3

  record Vertex, coord : Vec3, texcoord : Vec3?, normal : Vec3?

  alias Face = Array(Vertex)

  class Shape
    property name : String
    property faces : Array(Face)
    property material : Material
    property subshapes : Array(Shape)

    def initialize(@name, @faces, @material, @subshapes)
    end
  end

  class Material
    @colors = {} of String => Vec3
    @dissolvance = 0f64
    @maps = {} of String => String
    @reflection = {} of String => String

    property colors, dissolvance, maps, reflection

    def initialize
    end

    def initialize(@colors, @dissolvance, @maps, @reflection)
    end
  end

  DEFAULT_MATERIAL = "$default"

end
