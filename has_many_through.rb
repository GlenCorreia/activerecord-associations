# has_many :through

# Sets up a (n:n) many-to-many association using another model

# app/models/physician.rb
class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end

# app/models/appointment.rb
# The appointments table would have both a `physician_id` and `patient_id` column
class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end

# app/models/patient.rb
class Patient < ApplicationRecord
  has_many :appointment
  has_many :physicians, through: :appointments
end