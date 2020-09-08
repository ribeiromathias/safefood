# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "destroying all users and meals..."
User.destroy_all
Meal.destroy_all

puts "Instances destroyed... Creating new seller user"

matheus = User.new
matheus.name = 'Matheus'
matheus.phone_number = "12345678"
matheus.address = "Rio de janeiro"
matheus.email = 'matheus@gmail.com'
matheus.password = "123456"
matheus.save!


puts "Instances destroyed... Creating new seller user"

marcel = User.new
marcel.name = 'marcel'
marcel.phone_number = "87654321"
marcel.address = "Rio de janeiro"
marcel.email = 'marcel@gmail.com'
marcel.password = "123456"
marcel.save!

puts "user created... meals for sellers..."

file = URI.open('some foto')
celiac_focaccia = Meal.new
celiac_focaccia.user = user_one
celiac_focaccia.name
celiac_focaccia.offer_price
celiac_focaccia.description
celiac_focaccia.restriction
celiac_focaccia.save!  # why before
celiac_focaccia.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "user created... meals for buyer..."

file = URI.open('some foto')
chocolate_for_diabetics = Meal.new
chocolate_for_diabetics.name
chocolate_for_diabetics.offer_price
chocolate_for_diabetics.description
chocolate_for_diabetics.restriction
chocolate_for_diabetics.save!
chocolate_for_diabetics.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# cloudinary
# meal.photo.attach(io: open('https://banner2.cleanpng.com/20190111/fci/kisspng-rick-sanchez-clip-art-telegram-illustration-sticke-telegram-ampq-5c38a02c3ff6e4.644130331547214892262.jpg'), filename: 'rick.jpg')
