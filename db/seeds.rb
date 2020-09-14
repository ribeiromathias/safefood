# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "destroying all users and meals..."

OrderItem.destroy_all
Meal.destroy_all
Order.destroy_all
DeliverySchedule.destroy_all
User.destroy_all

puts "Instances destroyed... Creating new seller users"

sem_gluten = User.new
sem_gluten.name = 'Sem Glúten'
sem_gluten.seller = true
sem_gluten.phone_number = "12345678"
sem_gluten.address = "Rio de janeiro"
sem_gluten.email = 'semgluten@gmail.com'
sem_gluten.password = "123456"
sem_gluten.save!


for_diabetic = User.new
for_diabetic.seller = true
for_diabetic.name = 'ForDiabetic'
for_diabetic.phone_number = "87654321"
for_diabetic.address = "Rio de janeiro"
for_diabetic.email = 'fordiabetic@gmail.com'
for_diabetic.password = "123456"
for_diabetic.save!

botanic_life_nutrition = User.new
botanic_life_nutrition.seller = true
botanic_life_nutrition.name = 'Botanic life nutrition'
botanic_life_nutrition.phone_number = "87654321"
botanic_life_nutrition.address = "Rio de janeiro"
botanic_life_nutrition.email = 'botanic_life_nutrition@gmail.com'
botanic_life_nutrition.password = "123456"
botanic_life_nutrition.save!

puts "Instances destroyed... Creating new buyer user"

milene = User.new
milene.name = 'milene'
milene.phone_number = "12348765"
milene.address = "Rio de janeiro"
milene.email = 'milene@gmail.com'
milene.password = "123456"
milene.save!

puts "user created... meals for sellers..."

puts "celiac foods' seller"

file = URI.open('https://i.ytimg.com/vi/xCc2Qn4vxt4/maxresdefault.jpg')
celiac_focaccia = Meal.new
celiac_focaccia.user = sem_gluten
celiac_focaccia.name = "Gluten free focaccia"
celiac_focaccia.offer_price = 3
celiac_focaccia.description = "This rosemary focaccia is made entirely for celiac friends"
celiac_focaccia.restriction = "Celiac"
celiac_focaccia.photo.attach(io: file, filename: 'nes.png')
celiac_focaccia.save!

file = URI.open('https://www.thelittlekitchen.net/wp-content/uploads/2013/02/how-to-make-homemade-pasta-the-little-kitchen-4494.jpg')
celiac_fetuccine = Meal.new
celiac_fetuccine.user = sem_gluten
celiac_fetuccine.name = "Gluten free fetuccine"
celiac_fetuccine.offer_price = 3
celiac_fetuccine.description = "This celiac friendly fetuccine are completely handmade"
celiac_fetuccine.restriction = "Celiac"
celiac_fetuccine.photo.attach(io: file, filename: 'nes.png')
celiac_fetuccine.save!

file = URI.open('https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/17607-caramel-apple-pie-760x580.jpg?ext=.jpg')
celiac_apple_pie = Meal.new
celiac_apple_pie.user = botanic_life_nutrition
celiac_apple_pie.name = "Crispy glute-free Applepie"
celiac_apple_pie.offer_price = 3
celiac_apple_pie.description = "American Apple pie for celiacs, using only gluten-free flour"
celiac_apple_pie.restriction = "Celiac"
celiac_apple_pie.photo.attach(io: file, filename: 'nes.png')
celiac_apple_pie.save!

puts "diabetic foods' seller"

file = URI.open('https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/07/dark-chocolate-1296x728-header.jpg?w=1155&h=1528')
chocolate_for_diabetic = Meal.new
chocolate_for_diabetic.user = for_diabetic
chocolate_for_diabetic.name = "Amazing diabetic friendly chocolate"
chocolate_for_diabetic.offer_price = 2
chocolate_for_diabetic.description = "These chocolate bars are made with diabetic ingredients: cacao, coconut milk, maple syrup and salt."
chocolate_for_diabetic.restriction = "diabetic"
chocolate_for_diabetic.photo.attach(io: file, filename: 'nes.png')
chocolate_for_diabetic.save!

file = URI.open('https://www.thespruceeats.com/thmb/RbASKcyOkFnW_5EYV0H-S_UUskk=/2048x1367/filters:fill(auto,1)/fluffy-homemade-vanilla-cake-995187_18_preview-5afddc4c8023b900369a9cbd.jpeg')
cake_for_diabetic = Meal.new
cake_for_diabetic.user = for_diabetic
cake_for_diabetic.name = "Diabetic friendly cake"
cake_for_diabetic.offer_price = 2
cake_for_diabetic.description = "Classic delicious vanilla cake made diabetic friendly"
cake_for_diabetic.restriction = "diabetic"
cake_for_diabetic.photo.attach(io: file, filename: 'nes.png')
cake_for_diabetic.save!

file = URI.open('https://diabetesstrong.com/wp-content/uploads/2018/05/keto-cobb-salad-1.jpg')
keto_cobb_salad = Meal.new
keto_cobb_salad.user = botanic_life_nutrition
keto_cobb_salad.name = "Healty diabetic friendly salad"
keto_cobb_salad.offer_price = 2
keto_cobb_salad.description = "High fat, low carb Keto Cobb Salad - Diabetic friendly"
keto_cobb_salad.restriction = "diabetic"
keto_cobb_salad.photo.attach(io: file, filename: 'nes.png')
keto_cobb_salad.save!

puts "vegan foods' seller"

file = URI.open('https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Falafel-7-1-500x500.jpg')
falafel = Meal.new
falafel.user = botanic_life_nutrition
falafel.name = "Vegan falafel"
falafel.offer_price = 3
falafel.description = "Spiced and blended cheeckpees deepfried for vegan perfection."
falafel.restriction = "vegan"
falafel.photo.attach(io: file, filename: 'nes.png')
falafel.save!

file = URI.open('https://www.recipetineats.com/wp-content/uploads/2017/05/Lasagne-recipe-3-main-square.jpg?w=500&h=375&crop=1')
vegan_lasagne = Meal.new
vegan_lasagne.user = botanic_life_nutrition
vegan_lasagne.name = "Vegan lasagne"
vegan_lasagne.offer_price = 4
vegan_lasagne.description = "Homemade lasagne with vegan besciamella and cheese."
vegan_lasagne.restriction = "vegan"
vegan_lasagne.photo.attach(io: file, filename: 'nes.png')
vegan_lasagne.save!

file = URI.open('https://monkeyandmekitchenadventures.com/wp-content/uploads/2019/01/Ultimate-Healthy-Vegan-Black-Bean-Burger_06.jpg')
vegan_burgers = Meal.new
vegan_burgers.user = botanic_life_nutrition
vegan_burgers.name = "Vegan burgers"
vegan_burgers.offer_price = 5
vegan_burgers.description = "Homemade burgers completely vegan."
vegan_burgers.restriction = "vegan"
vegan_burgers.photo.attach(io: file, filename: 'nes.png')
vegan_burgers.save!