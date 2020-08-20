class ShoeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :brand_id, :name, :color, :year
  belongs_to :brand
end
