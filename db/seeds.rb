# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bike.destroy_all
User.destroy_all
user_1 = User.create!(email: "lewagon@gmail.com", password: "123456")
bike_1 = Bike.create!(title: "cervelo", description: "Cervelo Gravel Bike Cervélo Aspero Shimano GRX 600 11V 700 mm Noir Satin 2021.", location: "Casablanca", category: "Bike", price: 200, listed_at: "10/10/2021", photo: "bike1.jpg", user: user_1)
bike_2 = Bike.create!(title: "bike electrique", description: "Electric bikes amplify your pedaling power and your ability to do and see more. They're quick and smooth, with predictable, easy-to-control power and a long-lasting removable battery that recharges at any household outlet.", location: "Meknes", category: "Bike", price: 300, listed_at: "01/01/2021", photo: "bike2.jpg", user: user_1)
bike_3 = Bike.create!(title: "spinning bike", description: "Inventé dans les années 90, le Spinning est un concept original associant musique rythmée et cardio-training exécuté sur un vélo fixe ergométrique ou spin-bike.", location: "Fes", category: "Bike", price: 290, listed_at: "27/12/2021", photo: "bike3.jpg", user: user_1)
bike_4 = Bike.create!(title: "koga", description: "The best and the most beautiful bikes for passionate bikers. That is our mission since 1974.", location: "Rabat", category: "Mountain Bike", price: 300, listed_at: "17/06/2021", photo: "bike4.jpg", user: user_1)
bike_5 = Bike.create!(title: "gazelle", description: "Gazelle Medeo T10 HMB Mid-Step S10 2021 Electric Trekking Bike Black. Compare product. Gazelle Orange C8 2021 Hybrid Bike Black", location: "Tanger", category: "Mountain Bike", price: 419, listed_at: "19/08/2020", photo: "bike5.jpg", user: user_1)
bike_6 = Bike.create!(title: "schwinn", description: "Schwinn is the original American bike brand. Over the years, Schwinn has empowered millions of people, earning a special place in the hearts and minds of generations of riders. We have spent over a century building the bicycle industry into what it is today, and we’re not done yet.", location: "Casablanca", category: "Bike", price: 490, listed_at: "21/01/2019", photo: "bike6.jpg", user: user_1)
bike_7 = Bike.create!(title: "argon 18", description: "a Canadian manufacturer of superior quality road, gravel, triathlon and track bikes.", location: "Essouira", category: "Bike", price: 500, listed_at: "21/02/2021", photo: "bike7.jpg", user: user_1)
