# has_one_through

# Sets up a one-to-one connection with another model but can proceed through a third model

# app/models/supplier.rb
class Supplier < ApplicationRecord
  has_one :account
  has_one :account_history, through: :account
end

# app/models/account.rb
# Suppliers reference `supplier_id`
class Account < ApplicationRecord
  belongs_to :supplier
  has_one :account_history
end

# app/models/account_history.rb
# Account_histories referenced by `account_id`
class AccountHistory < ApplicationRecord
  belongs_to :account
end