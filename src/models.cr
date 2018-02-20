require "./models/*"
require "crystaledge"

module Models
  alias Vec3 = CrystalEdge::Vector3

  record Vertex, coord : Vec3, texcoord : Vec3?, normal : Vec3?

  alias Face = Array(Vertex)

  class Shape
    property name : String
    property faces : Array(Face)
    property material : Material?
    property subshapes : Array(Shape)

    def initialize(@name, @faces, @material, @subshapes)
    end
  end

  class Material
    @name : String
    @colors = {} of String => Vec3
    @dissolvance = 0f64
    @maps = {} of String => String
    @reflection = {} of String => String
    @specular_exponent = 0f64
    @sharpness = 0f64
    @optical_density = 0f64

    property colors, dissolvance, maps, reflection, specular_exponent, sharpness, optical_density

    def initialize(@name)
    end

    def initialize(@name, @colors, @dissolvance, @maps, @reflection)
    end

    def initialize(@name, @colors, @dissolvance, @maps, @reflection, @specular_exponent, @sharpness, @optical_density)
    end
  end

  DEFAULT_MATERIAL = "$default"

end
