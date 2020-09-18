# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'



OrderItem.destroy_all
Meal.destroy_all
Order.destroy_all
DeliverySchedule.destroy_all
User.destroy_all

puts "Instances destroyed... Creating new seller users"

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9jOUl9eUeSUOTetVID3D9uWco8i8xvwHWxA&usqp=CAU')
sem_gluten = User.new
sem_gluten.name = 'Sem Glúten'
sem_gluten.seller = true
sem_gluten.phone_number = "12345678"
sem_gluten.address = "Rio de janeiro"
sem_gluten.email = 'semgluten@gmail.com'
sem_gluten.photo.attach(io: file, filename: 'nes.png')
sem_gluten.password = "123456"
sem_gluten.save!

file = URI.open('https://i.pinimg.com/736x/24/05/94/240594ba5222de6cfd3a3c563e11642b.jpg')
for_diabetic = User.new
for_diabetic.seller = true
for_diabetic.name = 'ForDiabetic'
for_diabetic.phone_number = "87654321"
for_diabetic.address = "Rio de janeiro"
for_diabetic.email = 'fordiabetic@gmail.com'
for_diabetic.photo.attach(io: file, filename: 'nes.png')
for_diabetic.password = "123456"
for_diabetic.save!

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYTIzXXiu9PiczYpDDuI4uhdS7c4XtpqrMlg&usqp=CAU')
national_tropical_botanical_garden = User.new
national_tropical_botanical_garden.seller = true
national_tropical_botanical_garden.name = 'National Tropical Botanical Garden Foods'
national_tropical_botanical_garden.phone_number = "87654321"
national_tropical_botanical_garden.address = "Rio de janeiro"
national_tropical_botanical_garden.email = 'national_tropical_botanical_garden@gmail.com'
national_tropical_botanical_garden.photo.attach(io: file, filename: 'nes.png')
national_tropical_botanical_garden.password = "123456"
national_tropical_botanical_garden.save!

file = URI.open('https://cdn.shopify.com/s/files/1/0227/9073/3888/files/Logo_NaturLife_2019.jpg?height=628&pad_color=fff&v=1549527198&width=1200')
natur_life = User.new
natur_life.seller = true
natur_life.name = 'Natur Life'
natur_life.phone_number = "87654321"
natur_life.address = "Rio de janeiro"
natur_life.email = 'natur_life@gmail.com'
natur_life.photo.attach(io: file, filename: 'nes.png')
natur_life.password = "123456"
natur_life.save!

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTPjv_s9ECWy0Vy-SQFTadUDunknqqX-gN6iA&usqp=CAU')
rica_raiz_vegan = User.new
rica_raiz_vegan.seller = true
rica_raiz_vegan.name = 'Rica Raiz Vegan'
rica_raiz_vegan.phone_number = "87654321"
rica_raiz_vegan.address = "Rio de janeiro"
rica_raiz_vegan.email = 'rica_raiz_vegan@gmail.com'
rica_raiz_vegan.photo.attach(io: file, filename: 'nes.png')
rica_raiz_vegan.password = "123456"
rica_raiz_vegan.save!

file = URI.open('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/restaurant-logo-template-design-3a6c0ed0ab0a8be68ee06430fa018fa5_screen.jpg?ts=1566606306')
food_factory = User.new
food_factory.seller = true
food_factory.name = 'Food Factory'
food_factory.phone_number = "87654321"
food_factory.address = "Rio de janeiro"
food_factory.email = 'food_factory@gmail.com'
food_factory.photo.attach(io: file, filename: 'nes.png')
food_factory.password = "123456"
food_factory.save!

file = URI.open('https://img.freepik.com/vecteurs-libre/bagel-boy-boire-du-cafe_10316-2.jpg?size=338&ext=jpg')
oli_bagel_shop = User.new
oli_bagel_shop.seller = true
oli_bagel_shop.name = "Oli's Bagel Shop"
oli_bagel_shop.phone_number = "87654321"
oli_bagel_shop.address = "Rio de janeiro"
oli_bagel_shop.email = 'oli_bagel_shop@gmail.com'
oli_bagel_shop.photo.attach(io: file, filename: 'nes.png')
oli_bagel_shop.password = "123456"
oli_bagel_shop.save!

file = URI.open('https://idf.org/images/site1/content/Blue-circle.jpg')
diabetic_nutrition = User.new
diabetic_nutrition.seller = true
diabetic_nutrition.name = "Diabetic Nutrition"
diabetic_nutrition.phone_number = "87654321"
diabetic_nutrition.address = "Rio de janeiro"
diabetic_nutrition.email = 'diabetic_nutrition@gmail.com'
diabetic_nutrition.photo.attach(io: file, filename: 'nes.png')
diabetic_nutrition.password = "123456"
diabetic_nutrition.save!

file = URI.open('https://pyxis.nymag.com/v1/imgs/f09/94e/6a78c44174182031cfa42e32cd79ea3c0c-noma-.rsquare.w700.jpg')
noma = User.new
noma.seller = true
noma.name = "Noma"
noma.phone_number = "87654321"
noma.address = "Rio de janeiro"
noma.email = 'noma@gmail.com'
noma.photo.attach(io: file, filename: 'nes.png')
noma.password = "123456"
noma.save!

puts "Instances destroyed... Creating new buyer user"

milene = User.new
milene.name = 'Milene'
milene.phone_number = "12348765"
milene.address = "Rio de janeiro"
milene.email = 'milene@gmail.com'
milene.password = "123456"
milene.save!

puts "user created... meals for sellers..."

puts "celiac foods"

file = URI.open('https://i.pinimg.com/originals/c2/f2/dc/c2f2dc9d8de8e8c86a49f55693dfef6a.jpg')
bagel = Meal.new
bagel.user = oli_bagel_shop
bagel.name = "Vegan and celiac friendly bagels"
bagel.offer_price = 5
bagel.description = "Fresh NY style bagels with local ingredients"
bagel.restriction = "celiac"
bagel.photo.attach(io: file, filename: 'nes.png')
bagel.save!

file = URI.open('https://i.ytimg.com/vi/xCc2Qn4vxt4/maxresdefault.jpg')
celiac_focaccia = Meal.new
celiac_focaccia.user = sem_gluten
celiac_focaccia.name = "Gluten free focaccia"
celiac_focaccia.offer_price = 3
celiac_focaccia.description = "This rosemary focaccia is made entirely celiac friendly"
celiac_focaccia.restriction = "celiac"
celiac_focaccia.photo.attach(io: file, filename: 'nes.png')
celiac_focaccia.save!

file = URI.open('https://www.thelittlekitchen.net/wp-content/uploads/2013/02/how-to-make-homemade-pasta-the-little-kitchen-4494.jpg')
celiac_fetuccine = Meal.new
celiac_fetuccine.user = sem_gluten
celiac_fetuccine.name = "Gluten free fetuccine"
celiac_fetuccine.offer_price = 3
celiac_fetuccine.description = "This celiac friendly fetuccine dish is completely handmade"
celiac_fetuccine.restriction = "celiac"
celiac_fetuccine.photo.attach(io: file, filename: 'nes.png')
celiac_fetuccine.save!

file = URI.open('https://www.chatelaine.com/wp-content/uploads/2017/02/Artisanal-margherita-pizza-1-e1492634150494.jpg')
pizza = Meal.new
pizza.user = sem_gluten
pizza.name = "Vegan pizza margherita"
pizza.offer_price = 3
pizza.description = "Gluten-free flour and vegan cheese, basil and olive oil"
pizza.restriction = "celiac"
pizza.photo.attach(io: file, filename: 'nes.png')
pizza.save!

file = URI.open('https://www.onceuponachef.com/images/2020/03/Crusty-Bread-760x984.jpg')
bread = Meal.new
bread.user = sem_gluten
bread.name = "Freshly baked bread"
bread.offer_price = 3
bread.description = "Gluten-free baked in a wood oven"
bread.restriction = "celiac"
bread.photo.attach(io: file, filename: 'nes.png')
bread.save!

file = URI.open('https://www.tasteofhome.com/wp-content/uploads/2018/01/Monster-Cookies_EXPS_TOHON19_9150_E06_18_8b-1.jpg')
cookies = Meal.new
cookies.user = sem_gluten
cookies.name = "Chocolate chip cookies"
cookies.offer_price = 3
cookies.description = "Chocolate, gluten-free flour and lots of love"
cookies.restriction = "celiac"
cookies.photo.attach(io: file, filename: 'nes.png')
cookies.save!

file = URI.open('https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/17607-caramel-apple-pie-760x580.jpg?ext=.jpg')
celiac_apple_pie = Meal.new
celiac_apple_pie.user = natur_life
celiac_apple_pie.name = "Crispy gluten-free Apple pie"
celiac_apple_pie.offer_price = 3
celiac_apple_pie.description = "American Apple pie for celiacs, using only gluten-free flour"
celiac_apple_pie.restriction = "celiac"
celiac_apple_pie.photo.attach(io: file, filename: 'nes.png')
celiac_apple_pie.save!

file = URI.open('https://www.seriouseats.com/recipes/images/2011/09/buns%20(2).JPG')
buns = Meal.new
buns.user = food_factory
buns.name = "Burger buns"
buns.offer_price = 3
buns.description = "American buns for celiacs, using only gluten-free flour"
buns.restriction = "celiac"
buns.photo.attach(io: file, filename: 'nes.png')
buns.save!

file = URI.open('https://monkeyandmekitchenadventures.com/wp-content/uploads/2019/01/Ultimate-Healthy-Vegan-Black-Bean-Burger_06.jpg')
vegan_burgers = Meal.new
vegan_burgers.user = national_tropical_botanical_garden
vegan_burgers.name = "Vegan/celiac burgers"
vegan_burgers.offer_price = 5
vegan_burgers.description = "Homemade burgers completely vegan and gluten-free."
vegan_burgers.restriction = "celiac"
vegan_burgers.photo.attach(io: file, filename: 'nes.png')
vegan_burgers.save!

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/summer-rolls-recipe-1586457460.jpg?crop=0.951xw:0.635xh;0.0119xw,0.194xh&resize=980:*')
vegan_summer_rolls = Meal.new
vegan_summer_rolls.user = national_tropical_botanical_garden
vegan_summer_rolls.name = "Summer rolls vegan and celiac friendly"
vegan_summer_rolls.offer_price = 5
vegan_summer_rolls.description = "Celiac and vegan friendly."
vegan_summer_rolls.restriction = "celiac"
vegan_summer_rolls.photo.attach(io: file, filename: 'nes.png')
vegan_summer_rolls.save!

file = URI.open('https://i.pinimg.com/originals/19/e0/c1/19e0c1bdac8889638c0814900988eec4.jpg')
vegetable_plate = Meal.new
vegetable_plate.user = national_tropical_botanical_garden
vegetable_plate.name = "Plate with fresh garden vegetables: celiacs and vegan"
vegetable_plate.offer_price = 5
vegetable_plate.description = "Tomatoes, carrots, broccoli, fresh salad, and cucumbers"
vegetable_plate.restriction = "celiac"
vegetable_plate.photo.attach(io: file, filename: 'nes.png')
vegetable_plate.save!

puts "diabetic foods"

file = URI.open('https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/07/dark-chocolate-1296x728-header.jpg?w=1155&h=1528')
chocolate_for_diabetic = Meal.new
chocolate_for_diabetic.user = for_diabetic
chocolate_for_diabetic.name = "Amazing diabetic friendly chocolate"
chocolate_for_diabetic.offer_price = 2
chocolate_for_diabetic.description = "Ingredients: cacao, coconut milk, maple syrup and salt."
chocolate_for_diabetic.restriction = "diabetic"
chocolate_for_diabetic.photo.attach(io: file, filename: 'nes.png')
chocolate_for_diabetic.save!

file = URI.open('https://www.thespruceeats.com/thmb/RbASKcyOkFnW_5EYV0H-S_UUskk=/2048x1367/filters:fill(auto,1)/fluffy-homemade-vanilla-cake-995187_18_preview-5afddc4c8023b900369a9cbd.jpeg')
cake_for_diabetic = Meal.new
cake_for_diabetic.user = for_diabetic
cake_for_diabetic.name = "Vanillacake"
cake_for_diabetic.offer_price = 2
cake_for_diabetic.description = "Classic delicious vanilla cake made diabetic friendly"
cake_for_diabetic.restriction = "diabetic"
cake_for_diabetic.photo.attach(io: file, filename: 'nes.png')
cake_for_diabetic.save!

file = URI.open('https://diabetesstrong.com/wp-content/uploads/2018/05/keto-cobb-salad-1.jpg')
keto_cobb_salad = Meal.new
keto_cobb_salad.user = for_diabetic
keto_cobb_salad.name = "Healty diabetic friendly salad"
keto_cobb_salad.offer_price = 2
keto_cobb_salad.description = "High fat, low carb Keto Cobb Salad - Diabetic friendly"
keto_cobb_salad.restriction = "diabetic"
keto_cobb_salad.photo.attach(io: file, filename: 'nes.png')
keto_cobb_salad.save!

file = URI.open('https://i.pinimg.com/originals/19/e0/c1/19e0c1bdac8889638c0814900988eec4.jpg')
vegetable_plate = Meal.new
vegetable_plate.user = national_tropical_botanical_garden
vegetable_plate.name = "Plate with fresh garden vegetables: celiacs and vegan"
vegetable_plate.offer_price = 5
vegetable_plate.description = "Tomatoes, carrots, broccoli, fresh salad, and cucumbers"
vegetable_plate.restriction = "diabetic"
vegetable_plate.photo.attach(io: file, filename: 'nes.png')
vegetable_plate.save!

file = URI.open('https://st3.depositphotos.com/4590583/18471/i/1600/depositphotos_184710850-stock-photo-tropical-fruit-wooden-box-papaya.jpg')
fruit_boxes = Meal.new
fruit_boxes.user = national_tropical_botanical_garden
fruit_boxes.name = "Seasonal fruit boxes"
fruit_boxes.offer_price = 5
fruit_boxes.description = "Good for Diabetics: Mango, papaya, ananas, more.."
fruit_boxes.restriction = "diabetic"
fruit_boxes.photo.attach(io: file, filename: 'nes.png')
fruit_boxes.save!

file = URI.open('https://www.asweetpeachef.com/wp-content/uploads/2017/05/high-protein-fruit-smoothie-recipes-13.jpg')
assorted_shakes = Meal.new
assorted_shakes.user = national_tropical_botanical_garden
assorted_shakes.name = " 5 Nutrional shakes with our fruits: no sugar"
assorted_shakes.offer_price = 5
assorted_shakes.description = "Strawberry, mango, jackfruit, blueberry, and banana-chocolate"
assorted_shakes.restriction = "diabetic"
assorted_shakes.photo.attach(io: file, filename: 'nes.png')
assorted_shakes.save!

file = URI.open('https://www.abelandcole.co.uk/media/3412_28338_x.jpg')
gnocchi = Meal.new
gnocchi.user = diabetic_nutrition
gnocchi.name = "Gnocchi with Spinach and Walnuts"
gnocchi.offer_price = 5
gnocchi.description = "Made from a diabetic person, for diabetic people"
gnocchi.restriction = "diabetic"
gnocchi.photo.attach(io: file, filename: 'nes.png')
gnocchi.save!

file = URI.open('https://www.onceuponachef.com/images/2018/03/Breakfast-Burritos-760x569.jpg')
burritos = Meal.new
burritos.user = diabetic_nutrition
burritos.name = "Burritos mexican style: perfect for diabetics"
burritos.offer_price = 5
burritos.description = "Tradiational mexican food for diabetic people"
burritos.restriction = "diabetic"
burritos.photo.attach(io: file, filename: 'nes.png')
burritos.save!

puts "vegan foods"

file = URI.open('https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/07/Falafel-7-1-500x500.jpg')
falafel = Meal.new
falafel.user = national_tropical_botanical_garden
falafel.name = "Vegan falafel"
falafel.offer_price = 3
falafel.description = "Spiced and blended chickpeas deep fried to vegan perfection."
falafel.restriction = "vegan"
falafel.photo.attach(io: file, filename: 'nes.png')
falafel.save!

file = URI.open('https://www.recipetineats.com/wp-content/uploads/2017/05/Lasagne-recipe-3-main-square.jpg?w=500&h=375&crop=1')
vegan_lasagne = Meal.new
vegan_lasagne.user = national_tropical_botanical_garden
vegan_lasagne.name = "Vegan lasagna"
vegan_lasagne.offer_price = 4
vegan_lasagne.description = "Homemade lasagna with vegan besciamella and cheese."
vegan_lasagne.restriction = "vegan"
vegan_lasagne.photo.attach(io: file, filename: 'nes.png')
vegan_lasagne.save!

file = URI.open('https://monkeyandmekitchenadventures.com/wp-content/uploads/2019/01/Ultimate-Healthy-Vegan-Black-Bean-Burger_06.jpg')
vegan_burgers = Meal.new
vegan_burgers.user = national_tropical_botanical_garden
vegan_burgers.name = "Vegan burgers"
vegan_burgers.offer_price = 5
vegan_burgers.description = "Homemade burgers completely vegan."
vegan_burgers.restriction = "vegan"
vegan_burgers.photo.attach(io: file, filename: 'nes.png')
vegan_burgers.save!

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/summer-rolls-recipe-1586457460.jpg?crop=0.951xw:0.635xh;0.0119xw,0.194xh&resize=980:*')
vegan_summer_rolls = Meal.new
vegan_summer_rolls.user = national_tropical_botanical_garden
vegan_summer_rolls.name = "Vietnanese spring rolls"
vegan_summer_rolls.offer_price = 5
vegan_summer_rolls.description = "Freshly made traditional spring rolls (vegan)."
vegan_summer_rolls.restriction = "vegan"
vegan_summer_rolls.photo.attach(io: file, filename: 'nes.png')
vegan_summer_rolls.save!

file = URI.open('https://i.pinimg.com/originals/19/e0/c1/19e0c1bdac8889638c0814900988eec4.jpg')
vegetable_plate = Meal.new
vegetable_plate.user = national_tropical_botanical_garden
vegetable_plate.name = "Plate with fresh vegetables from our garden"
vegetable_plate.offer_price = 5
vegetable_plate.description = "Pre-assembled plate with garden's veggies: tomatoes, carrots, broccoli, fresh salad, and cucumbers"
vegetable_plate.restriction = "vegan"
vegetable_plate.photo.attach(io: file, filename: 'nes.png')
vegetable_plate.save!

file = URI.open('https://st3.depositphotos.com/4590583/18471/i/1600/depositphotos_184710850-stock-photo-tropical-fruit-wooden-box-papaya.jpg')
fruit_boxes = Meal.new
fruit_boxes.user = national_tropical_botanical_garden
fruit_boxes.name = "Seasonal fruit boxes"
fruit_boxes.offer_price = 5
fruit_boxes.description = "Mango, papaya, ananas, dragon fruit, jackfruit and more"
fruit_boxes.restriction = "vegan"
fruit_boxes.photo.attach(io: file, filename: 'nes.png')
fruit_boxes.save!

file = URI.open('https://www.asweetpeachef.com/wp-content/uploads/2017/05/high-protein-fruit-smoothie-recipes-13.jpg')
assorted_shakes = Meal.new
assorted_shakes.user = national_tropical_botanical_garden
assorted_shakes.name = " 5 Nutrional shakes with our fruits"
assorted_shakes.offer_price = 5
assorted_shakes.description = "Vegan protein shakes: strawberry, mango, jackfruit, blueberry, and banana-chocolate"
assorted_shakes.restriction = "vegan"
assorted_shakes.photo.attach(io: file, filename: 'nes.png')
assorted_shakes.save!


file = URI.open('https://cdn.loveandlemons.com/wp-content/uploads/2014/10/vegetable-soup.jpg')
vegan_soup = Meal.new
vegan_soup.user = national_tropical_botanical_garden
vegan_soup.name = "Soup made from our garden's veggies"
vegan_soup.offer_price = 5
vegan_soup.description = "Creamy vegetable soup made everyday"
vegan_soup.restriction = "vegan"
vegan_soup.photo.attach(io: file, filename: 'nes.png')
vegan_soup.save!

file = URI.open('https://i.pinimg.com/originals/c2/f2/dc/c2f2dc9d8de8e8c86a49f55693dfef6a.jpg')
bagel = Meal.new
bagel.user = oli_bagel_shop
bagel.name = "Vegan and celiac friendly bagels"
bagel.offer_price = 5
bagel.description = "Fresh NY style bagels with local ingredients"
bagel.restriction = "vegan"
bagel.photo.attach(io: file, filename: 'nes.png')
bagel.save!