# polymorphic

# With polymorphic associations, a model can belong to more than one other model,
# on a single association.

# app/models/picture.rb
# Picture table has both `imageable_id`, and `imageable_type`
class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end

# app/models/employee.rb
class Employee < ApplicationRecord
  has_many :pictures, as: :imageable
end

# app/models/product.rb
class Product < ApplicationRecord
  has_many :pictures, as: :imageable
end