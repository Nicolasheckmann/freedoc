# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
10.times do |i|
  City.create!(name: Faker::Nation.capital_city)
  puts "city number #{i+1}"
end

Specialty.destroy_all
["Neurology", "Ophthalmology", "Pediatrics", "Surgery", "Urology"].each do |specialty|
  Specialty.create!(name: specialty)
end

Doctor.destroy_all
10.times do |i|
  Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample)
  puts "Doctor number #{i+1}"
end
puts "destroys all and add 100 dummy doctors"

DoctorToSpecialty.destroy_all
30.times do |i|
  DoctorToSpecialty.create!(doctor: Doctor.all.sample, specialty: Specialty.all.sample)
end

Patient.destroy_all
50.times do |i|
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
  puts "Patient number #{i+1}"
end
puts "destroys all and add 100 dummy patient"

Appointment.destroy_all
100.times do |i|
  Appointment.create!(date: Faker::Date.between(from: '2014-09-23', to: '2021-09-25'), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
  puts "Appointment number #{i+1}"
end
puts "destroys all and add 100 dummy appointments"

