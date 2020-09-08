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

file = URI.open('https://i.ytimg.com/vi/xCc2Qn4vxt4/maxresdefault.jpg')
celiac_focaccia = Meal.new
celiac_focaccia.user = matheus
celiac_focaccia.name
celiac_focaccia.offer_price
celiac_focaccia.description
celiac_focaccia.restriction
celiac_focaccia.photo.attach(io: file, filename: 'nes.png')
celiac_focaccia.save!

puts "user created... meals for buyer..."

file = URI.open('https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/07/dark-chocolate-1296x728-header.jpg?w=1155&h=1528')
chocolate_for_diabetics = Meal.new
chocolate_for_diabetics.user = marcel
chocolate_for_diabetics.name
chocolate_for_diabetics.offer_price
chocolate_for_diabetics.description
chocolate_for_diabetics.restriction
chocolate_for_diabetics.photo.attach(io: file, filename: 'nes.png')
chocolate_for_diabetics.save!
