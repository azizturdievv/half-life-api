# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
23.times do 
@halfs = HalfLife.new(
    character: Faker::Games::HalfLife.character,
    enemy: Faker::Games::HalfLife.enemy,
    location: Faker::Games::HalfLife.location
)

@halfs.save
end