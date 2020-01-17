# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Vehicle.make_and_model, cost: Faker::Number.number(digits: 5), country_of_origin: Faker::Address.country)
  250.times do |index|
    Review.create!(author: Faker::Movies::StarWars.character,
      rating: Faker::Number.between(from: 1, to: 5),
      content_body: Faker::Quote.yoda)
    end
  end

  p "Created #{Product.count} products and #{Review.count} reviews"
