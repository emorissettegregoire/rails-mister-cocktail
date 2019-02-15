# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all
# Ingredient.destroy_all

# ingredients = [
# Ingredient.create(name: "lemon"),
# Ingredient.create(name: "ice"),
# Ingredient.create(name: "mint leaves")
# ]

# cocktails = [
# Cocktail.create!(name: "Rhum and Coke"),
# Cocktail.create!(name: "Martini"),
# Cocktail.create!(name: "Sex on the beach")
# ]

# Dose.create!(description: "1 ml of Rhum", ingredient: ingredients[0], cocktail: cocktails[0])
# Dose.create!(description: "2 ml of Gin", ingredient: ingredients[1], cocktail: cocktails[1])
# Dose.create!(description: "10 oz of White Rhum and Orange Liquor", ingredient: ingredients[2], cocktail: cocktails[2])

# puts 'Cocktails created'
