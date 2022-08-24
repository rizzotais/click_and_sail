# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
user = User.new(
  email: 'user@lewagon.com',
  password: '123456'
)

10.times do
  boats = Boat.new(
    user: user,
    brand: Faker::Name.name,
    size: Faker::Number.number(digits: 3),
    boat_type: Faker::Beer.name,
    year: Faker::Number.number(digits: 4),
  )
  boats.save!
end
