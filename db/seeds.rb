# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
# require 'json'

# Cocktail Ingredients
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "sweet vermouth")
Ingredient.create(name: "orange bitters")
Ingredient.create(name: "orange peel")
Ingredient.create(name: "aperol")
Ingredient.create(name: "egg white")

# Create Cocktails
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Aperol Spritz")
Cocktail.create(name: "Old Fashioned")
Cocktail.create(name: "Pisco Sour")
