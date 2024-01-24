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

l_entrecote = { name: "L Entrecote", address: "75008 Paris", phone_number: "999-000-333", category: "french" },
sushi_palace = { name: "Sushi Palace", address: "78779 Japan", phone_number: "999-000-333", category: "japanese" },
come_prima = { name: "Come Prima", address: "75342 Italy", phone_number: "999-000-333", category: "italian" },
golden_dragon = { name: "Golden Dragon", address: "63527 China", phone_number: "999-000-333", category: "chinese" },
belgium_fries = { name: "Belgium Fries", address: "92836 Belgium", phone_number: "999-000-333", category: "belgian" }

[l_entrecote, sushi_palace, come_prima, golden_dragon, belgium_fries].each do |attributes|
  @restaurant = Restaurant.create!(attributes)
end
