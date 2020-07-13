# has_one

class Supplier < ApplicationRecord
  has_one :account
  
  # Only contains one instance of another model
  # Supplier will only ever have a single account in this example
  # Account associated via `supplier_id`
end