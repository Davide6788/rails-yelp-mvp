# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "London", phone_number: "555555555", category: "italian" }
big_mama = { name: "Big Mama", address: "Station F", phone_number: "555555555", category: "chinese" }
surpriz = { name: "Surpriz", address: "Oberkampf", phone_number: "555555555", category: "japanese" }
mcdo = { name: "Mcdonalds", address: "Menilmontant", phone_number: "555555555", category: "belgian" }
kfc = { name: "KFC", address: "Menilmontant", phone_number: "555555555", category: "french" }


[ dishoom, big_mama, mcdo, kfc, surpriz ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
