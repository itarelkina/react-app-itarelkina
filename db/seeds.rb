# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
letter = Letter.create!(letter_number: "001")
letter.posts.create!(name: "Settlers of Catan", unit_price: 29.95, quantity: 1)
letter = Letter.create!(letter_number: "002")
letter.posts.create!(name: "Technodrome", unit_price: 24.99, quantity: 2)
letter = Letter.create!(letter_number: "003")
letter.posts.create!(name: "RailsCasts Pro Subscription", unit_price: 9.00, quantity: 1)
letter = Letter.create!(letter_number: "004")
letter.posts.create!(name: "Flux Capacitor", unit_price: 1955.00, quantity: 1)
letter = Letter.create!(letter_number: "005")
letter.posts.create!(name: "TextMate 2", unit_price: 75.00, quantity: 3)
letter = Letter.create!(letter_number: "006")
letter.posts.create!(name: "First Last Name 1", unit_price: 10000.00, quantity: 1)
letter = Letter.create!(letter_number: "007")
letter.posts.create!(name: "First Last Name 2", unit_price: 8450.00, quantity: 1)
letter = Letter.create!(letter_number: "008")
letter.posts.create!(name: "First Last Name 3", unit_price: 10000.00, quantity: 1)
letter = Letter.create!(letter_number: "009")
letter.posts.create!(name: "First Last Name 4", unit_price: 8450.00, quantity: 1)