# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Emptying earlier entries in DB
Booking.destroy_all
Bike.destroy_all
User.destroy_all
Biketype.destroy_all
Category.destroy_all
Color.destroy_all
##########################################################
# USERS #
User.create(email: "userone@test.com", password: "secret", first_name: "User", last_name:"One", address: "Thuisstraat 20a, 1234AB, Amsterdam")
User.create(email: "usertwo@test.com", password: "secret", first_name: "User", last_name:"Two", address: "Thuisweg 22b, 1234AB, Haarlem")
User.create(email: "userthree@test.com", password: "secret", first_name: "Owner", last_name:"Three", address: "Thuisplein 26, 1234AB, Den Haag")
User.create(email: "userfour@test.com", password: "secret", first_name: "Tourist", last_name:"Four", address: "Thuislaan 280, 1234AB, Nieuwegein")
########################
# Bikestuff #
Biketype.create(name: "Adult")
Biketype.create(name: "Child")

Category.create(name: "Bakfiets") # 1
Category.create(name: "Racefiets") # 2
Category.create(name: "Mountain-bike") # 3
Category.create(name: "E-bike") # 4
Category.create(name: "Omafiets") # 5
Category.create(name: "Tandem") # 6
Category.create(name: "Ligfiets") # 7
Category.create(name: "Unicycle") # 8
Category.create(name: "Tourfiets") # 9

Color.create(name: "White") # 1
Color.create(name: "Black") # 2
Color.create(name: "Green") # 3
Color.create(name: "Blue") # 4
Color.create(name: "Pink") # 5
Color.create(name: "Red") # 6
Color.create(name: "Purple") # 7
Color.create(name: "Yellow") # 8
Color.create(name: "Brown") # 9
Color.create(name: "Grey") # 10
######################################
# BIKES #
# white bike #
white_bike = Bike.new(name: "Witte racefiets", address: "Raamgracht 6a, Amsterdam", biketype_id: 1, category_id: 2, color_id: 1, user_id: 2)
# black bike #
black_bike = Bike.new(name: "Zwarte omafiets", address: "Stationsplein 50, Amsterdam", biketype_id: 1, category_id: 5, color_id: 2, user_id: 1)
# green bike #
green_bike = Bike.new(name: "Groene E-bike", address: "Van Ostadestraat 190C, Amsterdam", biketype_id: 1, category_id: 4, color_id: 3, user_id: 3)
# blue bike #
blue_bike = Bike.new(name: "Blauwe bakfiets", address: "Weesperstraat 61, Amsterdam", biketype_id: 1, category_id: 1, color_id: 4, user_id: 2)
# pink bike #
pink_bike = Bike.new(name: "Roze tandem", address: "Rozenstraat, Amsterdam", biketype_id: 1, category_id: 6, color_id: 5, user_id: 1)
# red bike #
red_bike = Bike.new(name: "Rode mountain-bike", address: "Hannie Dankbaarpassage 47, Amsterdam", biketype_id: 2, category_id: 3, color_id: 6, user_id: 2)
# purple bike #
purple_bike = Bike.new(name: "Paarse ligfiets", address: "Tweede Helmersstraat 63, Amsterdam", biketype_id: 1, category_id: 7, color_id: 7, user_id: 3)
# yellow_bike #
yellow_bike = Bike.new(name: "Yellow unicycle", address: "Kerkstraat 198, Amsterdam", biketype_id: 2, category_id: 8, color_id: 8, user_id: 3)
# brown bike #
brown_bike = Bike.new(name: "Brown Touringbike", address: "Distelweg 83, Amsterdam", biketype_id: 1, category_id: 9, color_id: 9, user_id: 2)
# grey_bike #
grey_bike = Bike.new(name: "Grey Granny's Bike", address: "Ketelstraat 3, Amsterdam", biketype_id: 1, category_id: 5, color_id: 10, user_id: 1)
###############################################
# IMAGES #
# white racefiets x
fileone = File.open(File.join(Rails.root, 'app/assets/images/seeds/whitebike.jpg'))
white_bike.photo.attach(io: fileone, filename: 'whitebike.jpg', content_type: 'image/jpg')
white_bike.save
# black omafiets x
filetwo = File.open(File.join(Rails.root, 'app/assets/images/seeds/blackbike.jpg'))
black_bike.photo.attach(io: filetwo, filename: "blackbike.jpg", content_type: "image/jpg")
black_bike.save
# green e-bike x
filethree = File.open(File.join(Rails.root, 'app/assets/images/seeds/greenbike.jpg'))
green_bike.photo.attach(io: filethree, filename: "greenbike.jpg", content_type: "image/jpg")
green_bike.save
# blue bakfiets x
filefour = File.open(File.join(Rails.root, 'app/assets/images/seeds/bluebike.jpg'))
blue_bike.photo.attach(io: filefour, filename: "bluebike.jpg", content_type: "image/jpg")
blue_bike.save
# pink tandem x
filefive = File.open(File.join(Rails.root, 'app/assets/images/seeds/pinkbike.jpg'))
pink_bike.photo.attach(io: filefive, filename: "pinkbike.jpg", content_type: "image/jpg")
pink_bike.save
# red mountain-bike x
filesix = File.open(File.join(Rails.root, 'app/assets/images/seeds/redbike.jpg'))
red_bike.photo.attach(io: filesix, filename: "redbike.jpg", content_type: "image/jpg")
red_bike.save
# purple ligfiets
fileseven = File.open(File.join(Rails.root, 'app/assets/images/seeds/purplebike.jpg'))
purple_bike.photo.attach(io: fileseven, filename: "purplebike.jpg", content_type: "image/jpg")
purple_bike.save
# yellow unicycle
fileeight = File.open(File.join(Rails.root, 'app/assets/images/seeds/yellowbike.jpg'))
yellow_bike.photo.attach(io: fileeight, filename: "yellowbike.jpg", content_type: "image/jpg")
yellow_bike.save
# brown touringbike
filenine = File.open(File.join(Rails.root, 'app/assets/images/seeds/brownbike.jpg'))
brown_bike.photo.attach(io: filenine, filename: "brownbike.jpg", content_type: "image/jpg")
brown_bike.save
# grey omafiets
fileten = File.open(File.join(Rails.root, 'app/assets/images/seeds/greybike.jpg'))
grey_bike.photo.attach(io: fileten, filename: "greybike.jpg", content_type: "image/jpg")
grey_bike.save
############################
