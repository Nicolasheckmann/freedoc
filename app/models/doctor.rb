class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :doctor_to_specialties
  has_many :specialties, through: :doctor_to_specialties
  belongs_to :city
end
