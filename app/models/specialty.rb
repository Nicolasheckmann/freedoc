class Specialty < ApplicationRecord
  has_many :doctor_to_specialties
  has_many :doctors, through: :doctor_to_specialties
end
