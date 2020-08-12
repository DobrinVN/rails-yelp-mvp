# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "02 93 84 23 32" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "02 93 84 23 31" }
prezzo = { name: "Prezzo", address: "10 Fake St, London E2 2JE", category: "italian", phone_number: "02 93 84 23 32" }
new_lotus_house =  { name: "New Lotus House", address: "85 Gales Dr, Crawley RH10 1QA", category: "chinese", phone_number: "02 93 84 23 51" }
wagamama = { name: "Wagamama", address: "22 East St, Horsham RH12 1HL", category: "japanese", phone_number: "02 93 84 23 32" }


[ dishoom, pizza_east, prezzo, new_lotus_house, wagamama ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

