class DoctorToSpecialty < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
end
