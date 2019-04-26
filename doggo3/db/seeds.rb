# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  city = City.create!(
    name:         Faker::Address.city
  )
end

10.times do 
  doggo = Dog.create!(
    name:         Faker::Pokemon.name,
    city_id:      City.all.sample
  )
end

10.times do
  sitter = Sitter.create!(
    name:         Faker::Name.name,
    city_id:      City.all.sample
  )
end

10.times do
  stroll = Stroll.create!(
    time:         Faker::Date.forward(42),
    sitter_id:    Sitter.all.sample
  )
end

10.times do
  dts = DogsToStroll.create!(
  stroll_id:      Stroll.all.sample,
  dog_id:         Dog.all.sample,
  sitter_id:      Sitter.all.sample
  )
end