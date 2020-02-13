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

puts "Adding awesome cocktail ingredients"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
JSON.parse(open(url).read)["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts "Shaking up these into cocktails"
mojito = Cocktail.new(name: "Mojito")
mojito.save!
mojito1 = Dose.create(description: "4cl light rum", cocktail_id: 1, ingredient_id: 1)
mojito2 = Dose.create(description: "3 mint leaves", cocktail_id: 1, ingredient_id: 2)
mojito3 = Dose.create(description: "2 limes", cocktail_id: 1, ingredient_id: 3)

tequila_sunrise = Cocktail.new(name: "Tequila Sunrise")
tequila_sunrise.save!
tequila_sunrise1 = Dose.create(description: "4cl light tequila", cocktail_id: 2, ingredient_id: 4)
tequila_sunrise2 = Dose.create(description: "15cl orange juice", cocktail_id: 2, ingredient_id: 5)
tequila_sunrise3 = Dose.create(description: "5cl grenadine", cocktail_id: 2, ingredient_id: 6)

caipirinha = Cocktail.new(name: "Caïpirinha")
caipirinha.save!
caipirinha1 = Dose.create(description: "4cl cachaça", cocktail_id: 3, ingredient_id: 7)
caipirinha2 = Dose.create(description: "3 limes", cocktail_id: 3, ingredient_id: 8)
caipirinha3 = Dose.create(description: "15cl lemonade", cocktail_id: 3, ingredient_id: 9)

moscow_mule = Cocktail.new(name: "Moscow Mule")
moscow_mule.save!
moscow_mule1 = Dose.create(description: "4cl vodka", cocktail_id: 4, ingredient_id: 10)
moscow_mule2 = Dose.create(description: "10cl milk", cocktail_id: 4, ingredient_id: 11)
moscow_mule3 = Dose.create(description: "4cl bourbon", cocktail_id: 4, ingredient_id: 12)

bloody_mary = Cocktail.new(name: "Bloody Mary")
bloody_mary.save!
bloody_mary1 = Dose.create(description: "2cl vodka", cocktail_id: 5, ingredient_id: 13)
bloody_mary2 = Dose.create(description: "15cl tomato juice", cocktail_id: 5, ingredient_id: 14)
bloody_mary3 = Dose.create(description: "1 ts nutmeg", cocktail_id: 5, ingredient_id: 15)
