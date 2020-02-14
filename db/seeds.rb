# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# "strIngredient1": "Light rum"
# "strIngredient1": "Applejack"
# "strIngredient1": "Gin"
# "strIngredient1": "Dark rum"
# "strIngredient1": "Sweet Vermouth"
# "strIngredient1": "Strawberry schnapps"
# "strIngredient1": "Scotch"
# "strIngredient1": "Apricot brandy"
# "strIngredient1": "Triple sec"
# "strIngredient1": "Southern Comfort"
# "strIngredient1": "Orange bitters"
# "strIngredient1": "Brandy"
# "strIngredient1": "Lemon vodka"
# "strIngredient1": "Blended whiskey"
# "strIngredient1": "Dry Vermouth"
# "strIngredient1": "Amaretto"
# "strIngredient1": "Tea"
# "strIngredient1": "Champagne"
# "strIngredient1": "Coffee liqueur"
# "strIngredient1": "Bourbon"
# "strIngredient1": "Tequila"
# "strIngredient1": "Vodka"

require 'open-uri'
require 'json'
require 'faker'

puts "Adding awesome cocktail ingredients"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
JSON.parse(open(url).read)["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts "Shaking up these into cocktails"
mojito_photo = URI.open('https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
mojito = Cocktail.new(name: "Mojito")
mojito.photo.attach(io: mojito_photo, filename: 'mojito.jpg', content_type: 'image/jpg')
mojito.save!
Dose.create(description: "4cl light rum", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "3 mint leaves", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "2 limes", cocktail_id: 1, ingredient_id: 3)
5.times do
  review = {}
  review[:content] = Faker::Restaurant.review
  review[:rating] = rand(1..5)
  review[:cocktail_id] = mojito.id
  Review.new(review).save!
end

tequila_sunrise_photo = URI.open('https://noseychef.com/wp-content/uploads/2018/07/IMG_3754.jpg')
tequila_sunrise = Cocktail.new(name: "Tequila Sunrise")
tequila_sunrise.photo.attach(io: tequila_sunrise_photo, filename: 'tequila_sunrise.jpg', content_type: 'image/jpg')
tequila_sunrise.save!
Dose.create(description: "4cl light tequila", cocktail_id: 2, ingredient_id: 4)
Dose.create(description: "15cl orange juice", cocktail_id: 2, ingredient_id: 5)
Dose.create(description: "5cl grenadine", cocktail_id: 2, ingredient_id: 6)
5.times do
  review = {}
  review[:content] = Faker::Restaurant.review
  review[:rating] = rand(1..5)
  review[:cocktail_id] = tequila_sunrise.id
  Review.new(review).save!
end

caipirinha_photo = URI.open('https://images.unsplash.com/photo-1512144981474-0003a89c0165?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
caipirinha = Cocktail.new(name: "Caïpirinha")
caipirinha.photo.attach(io: caipirinha_photo, filename: 'caipirinha.jpg', content_type: 'image/jpg')
caipirinha.save!
Dose.create(description: "4cl cachaça", cocktail_id: 3, ingredient_id: 7)
Dose.create(description: "3 limes", cocktail_id: 3, ingredient_id: 8)
Dose.create(description: "15cl lemonade", cocktail_id: 3, ingredient_id: 9)
5.times do
  review = {}
  review[:content] = Faker::Restaurant.review
  review[:rating] = rand(1..5)
  review[:cocktail_id] = caipirinha.id
  Review.new(review).save!
end

moscow_mule_photo = URI.open('https://images.unsplash.com/photo-1527628126150-086ff233b951?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
moscow_mule = Cocktail.new(name: "Moscow Mule")
moscow_mule.photo.attach(io: moscow_mule_photo, filename: 'moscow_mule.jpg', content_type: 'image/jpg')
moscow_mule.save!
Dose.create(description: "4cl vodka", cocktail_id: 4, ingredient_id: 10)
Dose.create(description: "10cl milk", cocktail_id: 4, ingredient_id: 11)
Dose.create(description: "4cl bourbon", cocktail_id: 4, ingredient_id: 12)
5.times do
  review = {}
  review[:content] = Faker::Restaurant.review
  review[:rating] = rand(1..5)
  review[:cocktail_id] = moscow_mule.id
  Review.new(review).save!
end

bloody_mary_photo = URI.open('https://images.unsplash.com/photo-1551734322-f43b0798585a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
bloody_mary = Cocktail.new(name: "Bloody Mary")
bloody_mary.photo.attach(io: bloody_mary_photo, filename: 'bloody_mary.jpg', content_type: 'image/jpg')
bloody_mary.save!
Dose.create(description: "2cl vodka", cocktail_id: 5, ingredient_id: 13)
Dose.create(description: "15cl tomato juice", cocktail_id: 5, ingredient_id: 14)
Dose.create(description: "1 ts nutmeg", cocktail_id: 5, ingredient_id: 15)
5.times do
  review = {}
  review[:content] = Faker::Restaurant.review
  review[:rating] = rand(1..5)
  review[:cocktail_id] = bloody_mary.id
  Review.new(review).save!
end
