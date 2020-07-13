# belongs_to

# app/models/book.rb
class Book < ApplicationRecord
  belongs_to :author
  
  # Must be singular
  # Sets up a 1:1 connection with another model - Author in this case
  # Books associated to author via `author_id` on books table
end