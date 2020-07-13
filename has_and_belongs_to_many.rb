# Has and belongs to many (has_and_belongs_to_many)

# A direct many-to-many connection with another model without a third intervening
# model. You'll need to create a simple join table to use this type of association.
# It's limiting in terms of advanced querying so use with caution.

# The naming convention of the join table would take the name of both models and
# become plural so

# assembles_parts is the new table name which contains an `assembly_id` and `part_id`
# entity

# app/models/assembly.rb
class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts
end

# app/models/part.rb
class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies
end