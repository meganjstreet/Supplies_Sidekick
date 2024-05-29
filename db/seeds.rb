# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Offer.destroy_all
Supply.destroy_all
User.destroy_all

puts "Making some supplies seeds"

user = User.new(first_name: "Meg", last_name: "Street", address: "89 Geneva Drive, Camps Bay, Cape Town", email: "meganjstreet@gmail.com", password:"secret", avatar_url:"https://thumbs.dreamstime.com/b/construction-blueprint-5200849.jpg")
user2 = User.new(first_name: "Nolu", last_name: "Ncamiso", address: "Gugulethu ny119 street no6", email: "nncamiso30108@gmail.com", password:"nolu-2024N",avatar_url:"https://www.dreamstime.com/stock-photo-tired-construction-worker-wiping-forehead-site-image85305078.jpg")
user3 = User.new(first_name: "Luvo", last_name: "Sapa", address: "Kraaifotain wallacedene,france street 27360", email: "sapaluvo@gmail.com", password:"luvos-2024", avatar_url:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fdepositphotos.com%2Fphotos%2Fconstruction-engineer.html&psig=AOvVaw2DDwanjdZejcQhlPYgdHCj&ust=1717063824554000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMio_7XPsoYDFQAAAAAdAAAAABAJ.jpg")
user4 = User.new(first_name: "Tools", last_name: "Mavalentiya", address: " Phillip village,Cape Town", email: "Athule@gmail.com", password:"tools-2024", avatar_url:"https://thumbs.dreamstime.com/b/construction-blueprint-5200849.jpg")
user.save!
user2.save!
user3.save!
user4.save!

Supply.create(name: "Wood Planks", description: "1000 wooden planks", address: "123 Avenue", img_url:"https://housing.com/news/wp-content/uploads/2023/04/What-is-timber-wood-and-which-are-the-best-types-f.jpg", price:100, quantity:100, user: user)
Supply.create(name: "Paint", description: "200 buckets of paint", address: "666 Street", img_url:"https://www.builders.co.za/media/sys-master%2Froot%2Fh39%2Fh3f%2F12683974639646%2F99-423601-Straight+on_large", price:69, quantity:2, user: user2 )
Supply.create(name: "Nails", description: "Big pot of nails", address: "123 Avenue", img_url:"https://housing.com/news/wp-content/uploads/2023/04/What-is-timber-wood-and-which-are-the-best-types-f.jpg", price:888, quantity:4, user: user)
Supply.create(name: "Sand paper", description: "5 sheets of sandpaper", address: "999 Road", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Schleifpapier_verschiedene_Sorten.jpg/800px-Schleifpapier_verschiedene_Sorten.jpg", price:230, quantity:5, user: user2)
Supply.create(name: "Screwdriver set", description: "screwdriver set in good condition", address: "345 Burb", img_url: "https://www.bobvila.com/wp-content/uploads/2017/04/Types_Of_Screwdrivers.jpg", price:30, quantity:3967, user: user)

Supply.create(name: "Scaffold hoists", description: "Scaffold hoists set in good condition", address: "phillip junction mall", img_url: "https://www.hoistandaccess.com/assets/uploads/images/equipment/scaffold-hoist-3.jpg", price:750, quantity:4380, user: user)
Supply.create(name: "Plastic Rebar spacers", description: "Plastic Rebar spacers set in good condition", address: "50 long street capetown", img_url: "rebar.jpg", price:280, quantity:6990, user: user)
Supply.create(name: "Galvanised Hoop Iron", description: "Galvanised Hoop Iron set in good condition", address: "Corner of Bill Bezuidenhout Avenue", img_url:"hoops.jpg", price:30, quantity:2540, user: user)
Supply.create(name: "PPR Pipes, Fittings and Coupling", description: "PPR Pipes, Fittings and Coupling set in good condition", address: "Jakes gerwel Dr,Athlone,capetown,7764", img_url: "pprpipes.jpg", price:189.99, quantity:2890, user: user)

puts "Supplies seeded!"

# img_url: "homepage-banner.jpg
