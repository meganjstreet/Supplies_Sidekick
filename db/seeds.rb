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

User.create(first_name: "Meg", last_name: "Street", address: "89 Geneva Drive, Camps Bay, Cape Town", email: "meganjstreet@gmail.com", password:"secret", avatar_url:"user.png")
User.create(first_name: "Nolu", last_name: "Ncamiso", address: "Gugulethu ny119 street no6", email: "nncamiso30108@gmail.com", password:"secret",avatar_url:"profile.png")
User.create(first_name: "Luvo", last_name: "Sapa", address: "Kraaifotain wallacedene,france street 27360", email: "sapaluvo@gmail.com", password:"secret", avatar_url:"profile (1).png")
User.create(first_name: "Tools", last_name: "Mavalentiya", address: " Phillip village,Cape Town", email: "Athule@gmail.com", password:"secret", avatar_url:"tools.png")


Supply.create(name: "Wood Planks", description: "1000 wooden planks", address: "1 Somerset Road, Green Point, Cape Town", img_url:"https://housing.com/news/wp-content/uploads/2023/04/What-is-timber-wood-and-which-are-the-best-types-f.jpg", price:100, quantity:100, user: User.find_by(first_name: "Meg"))
Supply.create(name: "Paint", description: "200 buckets of paint", address: "8 Buiten St, City Centre, Cape Town", img_url:"https://www.builders.co.za/media/sys-master%2Froot%2Fh39%2Fh3f%2F12683974639646%2F99-423601-Straight+on_large", price:69, quantity:2, user: User.find_by(first_name: "Nolu") )
Supply.create(name: "Nails", description: "Big pot of nails", address: "Cape Town", img_url:"https://housing.com/news/wp-content/uploads/2023/04/What-is-timber-wood-and-which-are-the-best-types-f.jpg", price:888, quantity:4, user: User.find_by(first_name: "Meg") )
Supply.create(name: "Sand paper", description: "5 sheets of sandpaper", address: "5 Voortrekker Rd, Belmont Park, Kraaifontein, Cape Town", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Schleifpapier_verschiedene_Sorten.jpg/800px-Schleifpapier_verschiedene_Sorten.jpg", price:230, quantity:5, user: User.find_by(first_name: "Nolu") )
Supply.create(name: "Screwdriver set", description: "screwdriver set in good condition", address: "25 Durban Rd, Bellville, Cape Town", img_url: "https://www.bobvila.com/wp-content/uploads/2017/04/Types_Of_Screwdrivers.jpg", price:30, quantity:3967, user: User.find_by(first_name: "Meg"))

Supply.create(name: "Scaffold hoists", description: "Scaffold hoists set in good condition", address: "15 Beach Rd, Strand, Cape Town", img_url: "https://www.hoistandaccess.com/assets/uploads/images/equipment/scaffold-hoist-3.jpg", price:750, quantity:4380, user: User.find_by(first_name: "Meg") )
Supply.create(name: "Plastic Rebar spacers", description: "Plastic Rebar spacers set in good condition", address: "50 Long Street, Cape Town", img_url: "rebar.jpg", price:280, quantity:6990, user: User.find_by(first_name: "Nolu") )
Supply.create(name: "Galvanised Hoop Iron", description: "Galvanised Hoop Iron set in good condition", address: "Bill Bezuidenhout Avenue, Cape Town", img_url:"hoops.jpg", price:30, quantity:2540, user: User.find_by(first_name: "Meg"))
Supply.create(name: "PPR Pipes, Fittings and Coupling", description: "PPR Pipes, Fittings and Coupling set in good condition", address: "Jakes Gerwel Drive, Athlone, Cape Town", img_url: "pprpipes.jpg", price:189.99, quantity:2890, user: User.find_by(first_name: "Nolu"))

Offer.create(amount: 750, details:"Can I have Wood Planks", user: User.find_by(first_name: "Nolu"), supply: Supply.find_by(name: "Wood Planks"))
Offer.create(amount: 380, details:"Can I have White Paint", user: User.find_by(first_name: "Meg"), supply: Supply.find_by(name: "Paint"))
Offer.create(amount: 170, details:"Got Galvanised Hoop Iron, In a good condition", user: User.find_by(first_name: "Luvo"), supply: Supply.find_by(name:"Galvanised Hoop Iron"))
Offer.create(amount: 700, details:"1 year old Scaffold hoists", user: User.find_by(first_name: "Nolu"), supply: Supply.find_by(name:" Scaffold hoists"))
Offer.create(amount: 830, details:"Looking for PPR Pipes ,Fitting and Coupling for my New Bathroom", user: User.find_by(first_name:"Luvo"), supply: Supply.find_by(name: "PPR Pipes, Fittings and Coupling"))

puts "Supplies seeded!"

# img_url: "homepage-banner.jpg
# puts Supply.where(name: "Paint")
# puts Supply.find(id: 1)
