# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(first_name: "Test", last_name:"Testoni", email:"testo@te.st", password:"test")
role1 = Role.create(name: "admin")
role2 = Role.create(name: "user")

user_role = UserRole.create(role_id:role1.id, user_id:user.id)

category1 = Category.create(name: "Vinjak", image: "http://www.neretvakomerc.com/wp-content/uploads/2011/06/3509-Vinjak-1l-Rubin.jpg")
category2 = Category.create(name: "Vine", image: "https://c2.staticflickr.com/6/5057/5459818034_ac9da33455.jpg")
category3 = Category.create(name: "Liquor", image: "https://www.tastebrandy.com/images/Serbian_Grape_Brandy_Rock98.jpg")

product11 = Product.create(name: "Vinjak 5 V.S.O.P", image: "http://www.rubin.rs/rs/images/vinjak/vinjak-5.png", 
description: "Sadrzaj alkohola: 40%v/v. Puni se u staklene boce zapremine 0.7 l. Ekskluzivno pakovanje: 0.7l u ukrasnoj kutiji",
quantity: 40, price: 1200.3, category_id: category1.id)

product21 = Product.create(name: "Rubinov Vinjak", image: "http://www.rubin.rs/rs/images/vinjak/vinjak_1l.png", description: "Sadrzaj alkohola: 40%v/v. Puni se u staklene boce zapremine 1 l, 0.5l i 0.1 l.", quantity: 20, price: 560.3, category_id: category1.id)

product31 = Product.create(name: "Vinjak XO", image: "http://www.rubin.rs/rs/images/vinjak/vinjak_xo.png", description: "Sadrzaj alkohola: 40%v/v. Puni se u staklene boce zapremine 0.75l", quantity: 30, price: 2200.2, category_id: category1.id)

product12 = Product.create(name: "Car Lazar", image: "http://www.rubin.rs/rs/images/vina/car-lazar.png", description: "Sadrzaj alkohola: 12%v/v
Puni se u staklene boce zapremine 1 l i 0.75l", quantity:30, price: 230, category_id: category2.id)

product22 = Product.create(name: "Carica Milica", image:"http://www.rubin.rs/rs/images/vina/carica-milica.png",description: "Sadrzaj alkohola: 11%v/v. Puni se u staklene boce zapremine 1 l i 0.75l.", quantity:50, price:220, category_id:category2.id)

product32 = Product.create(name: "Medvedja Krv", image: "http://www.rubin.rs/rs/images/vina/medvedja-krv.png", description: "Sadrzaj alkohola: 12%v/v. Puni se u staklene boce zapremine 1 l, 0.75l i 0.187l.", quantity: 43, price:260.3, category_id:category2.id)

product13 = Product.create(name: "Loza", image: "http://www.rubin.rs/rs/images/alkohol/loza.png", description: "Sadrzaj alkohola 45%v/v. Puni se u staklene boce zapremine 1 l i 0.1l.", quantity: 12, price: 570.4, category_id: category3.id)

product23 = Product.create(name: "BITTER GREEN GHOST Absinth", image: "http://www.rubin.rs/rs/images/alkohol/green-ghost-absinth.png", description: "Sadrzaj alkohola 54%v/v. Puni se u staklene boce zapreminie 0.7l i 0.1l.", quantity:20, price:1100, category_id:category3.id)

product33 = Product.create(name: "VODKA ATLANTIK", image: "http://www.rubin.rs/rs/images/alkohol/vodka-atlantic.png", description: "Sadrzaj alkohola 40%v/v. Puni se u staklene boce zapremine 1 l, 0.7l i 0.1l.", quantity:100, price: 1000, category_id:category3.id)
