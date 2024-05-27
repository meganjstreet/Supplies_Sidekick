# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Supply.destroy_all
User.destroy_all
puts "Making some supplies seeds"

user = User.new(first_name: "Meg", last_name: "Street", address: "19 Kevinor Court", email: "meganjstreet@gmail.com", password:"secret")
user2 = User.new(first_name: "Nolu", last_name: "Ncamiso", address: "Vibes City", email: "nolu@lewagon.com", password:"secret2")
user.save!

Supply.create(name: "Wood Planks", description: "1000 wooden planks", address: "123 Avenue", img_url:"https://housing.com/news/wp-content/uploads/2023/04/What-is-timber-wood-and-which-are-the-best-types-f.jpg", price:100, quantity:100, user: user)
Supply.create(name: "Paint", description: "200 buckets of paint", address: "666 Street", img_url:"https://www.builders.co.za/media/sys-master%2Froot%2Fh39%2Fh3f%2F12683974639646%2F99-423601-Straight+on_large", price:69, quantity:2, user: user2 )
Supply.create(name: "Nails", description: "Big pot of nails", address: "123 Avenue", img_url:"https://housing.com/news/wp-content/uploads/2023/04/What-is-timber-wood-and-which-are-the-best-types-f.jpg", price:888, quantity:4, user: user)
Supply.create(name: "Sand paper", description: "5 sheets of sandpaper", address: "999 Road", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Schleifpapier_verschiedene_Sorten.jpg/800px-Schleifpapier_verschiedene_Sorten.jpg", price:230, quantity:5, user: user2)
Supply.create(name: "Screwdriver set", description: "screwdriver set in good condition", address: "345 Burb", img_url: "https://www.bobvila.com/wp-content/uploads/2017/04/Types_Of_Screwdrivers.jpg", price:30, quantity:3967, user: user)

puts "Supplies seeded!"
