# has_many

# app/models/author.rb
class Author < ApplicationRecord
  has_many :books
  
  # Naming is plural
  # Indicates a 1:n (one-to-many) association
  # An author can have many books in this example
  # Books associated via `authod_id`
end