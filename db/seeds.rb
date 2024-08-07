# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

attributes = [
  { name: "Mama Dumpling", address: "Rue du Pas", phone_number: "0678989090", category: "chinese"},
  { name: "Papa Lello", address: "Quais des Chartrons", phone_number: "0678989088", category: "italian"},
  { name: "Sushis Shop", address: "Rue Gambetta", phone_number: "0678779088", category: "japanese"},
  { name: "Bistrot Régent", address: "Rue Stalingrad", phone_number: "0655779088", category: "french"},
  { name: "Quick", address: "Merignac", category: "belgian"}
]

attributes.each do |attribute|
  restaurant = Restaurant.create(attribute)
  puts "#{restaurant.name} created !"
end

puts "#{Restaurant.count} created !"
