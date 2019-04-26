# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

40.times do
  city = City.create(
    name:         Faker::Address.city,
    zip_code:     Faker::Address.zip_code)
end

10.times do
  patient = Patient.create(
  first_name:     Faker::Name.first_name,
  last_name:      Faker::Name.last_name,
  city:           City.all.sample)
end

10.times do
  doctor = Doctor.create!(
    first_name:   Faker::Name.first_name,
    last_name:    Faker::Name.last_name,
    city:         City.all.sample)
end

100.times do
  appointment = Appointment.create(
    date:         Faker::Date.forward(420),
    patient_id:   Patient.all.sample.id,
    doctor_id:    Doctor.all.sample.id,
    city:         City.all.sample)
end

15.times do
  specialty = Specialty.create!(
    name:         ['A', 'B', 'C', 'D'].sample)
end

50.times do
  doctor_speciality = DoctorSpecialty.create!(
    specialty_id: Specialty.all.sample.id,
    doctor_id:    Doctor.all.sample.id)
end