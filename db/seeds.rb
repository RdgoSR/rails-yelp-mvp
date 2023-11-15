# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning DB..."
Restaurant.destroy_all

puts "Creating restaurants"
outback = { name: "Outback", address: "Botafogo", phone_number: "11111111", category: "french" }
temakeria = { name: "Temakeria", address: "Ipanema", phone_number: "22222222", category: "japanese" }
seedum = { name: "seedum", address: "Flamengo", phone_number: "33333333", category: "italian" }
seeddois = { name: "seeddois", address: "Leblon", phone_number: "44444444", category: "belgian" }
seedtres = { name: "seedtres", address: "Recreio", phone_number: "55555555", category: "chinese" }

[outback, temakeria, seedum, seeddois, seedtres].each do |restaurant_attributes|
  restaurant = Restaurant.create!(restaurant_attributes)
  puts "Created #{restaurant.name}"
end
