class BrandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :shoes
end
