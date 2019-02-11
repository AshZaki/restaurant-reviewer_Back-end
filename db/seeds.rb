# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ash = User.create(username:'ash', password:'1212312121', first_name:'Ashley', last_name:'Zaki', email:'ash@gmail.com', phone_number: 5714666405)
robin = User.create(username:'robin', password:'11', first_name:'Robin', last_name:'Kim', email:'robin@gmail.com', phone_number: 5711111111)
vlad = User.create(username:'vladdy', password:'22', first_name:'Vlad', last_name:'Deryuzhenko', email:'vlad@gmail.com', phone_number: 5712222222)
anuj = User.create(username:'papanuj', password:'33', first_name:'Anuj', last_name:'Shama', email:'anuj@gmail.com', phone_number: 5713333333)
joe = User.create(username:'joe', password:'44', first_name:'Joe', last_name:'Spinelli', email:'joe@gmail.com', phone_number: 5714444444)
jc = User.create(username:'jc', password:'55', first_name:'JC', last_name:'Chang', email:'jc@gmail.com', phone_number: 5715555555)
mandy = User.create(username:'mandy', password:'66', first_name:'Mandy', last_name:'Pilaud', email:'mandy@gmail.com', phone_number: 5716666666)


# restaurant1 = Restaurant.create(name:'Sushi Yoshi', address:'120 Branch Rd SE', city:'Vienna', state:'VA', zipcode:22180, type:'Restaurant', cuisine:'Japanesse', restaurant_rating:4)
# restaurant2 = Restaurant.create(name:'Skorpio s Maggio s Greek Family Restaurant', address:'2531 Chain Bridge Rd', city:'Vienna', state:'VA', zipcode:22181, type:'Restaurant', cuisine:'Mediterenian', restaurant_rating:4.5)
# restaurant3 = Restaurant.create(name:'Sunflower Vegetarian Restaurant', address:'163 Glyndon St SE', city:'Vienna', state:'VA', zipcode:22180, type:'Restaurant', cuisine:'Vegetarian', restaurant_rating:4.5)
# restaurant4 = Restaurant.create(name:'Pazzo Pomodoro - Vienna', address:'377 Maple Ave W', city:'Vienna', state:'VA', zipcode:22180, type:'Restaurant', cuisine:'Italian', restaurant_rating:3.5)
# restaurant5 = Restaurant.create(name:'Le Diplomate', address:'701 9th St NW', city:'Washington', state:'DC', zipcode:20001, type:'Restaurant', cuisine:'American', restaurant_rating:4.5)
# restaurant6 = Restaurant.create(name:'Old Ebbitt Grill', address:'122 Blagden Alley NW', city:'Washington', state:'DC', zipcode:20001, type:'Restaurant', cuisine:'American', restaurant_rating:3)

# review1 = Review.create(user_id: 1, restaurant_id: 5, content:'Best breakfast ever!', rating: 5)
# review2 = Review.create(user_id: 2, restaurant_id: 1, content:'the line is forever', rating: 3)
# review3 = Review.create(user_id: 3, restaurant_id: 2, content:'very good service', rating: 4.5)
# review4 = Review.create(user_id: 1, restaurant_id: 3, content:'This place is amazing', rating: 4.5)
# review5 = Review.create(user_id: 4, restaurant_id: 4, content:'restaurant is dirty, but food are great', rating: 2)
# review6 = Review.create(user_id: 5, restaurant_id: 6, content:'food here is so expensive', rating: 3)
# review7 = Review.create(user_id: 2, restaurant_id: 3, content:'I am a big fan of Vegetarian food' , rating: 5)
# review8 = Review.create(user_id: 6, restaurant_id: 1, content:'Sushi here is the best', rating: 5)
# GET 
# url_to_fetch = 'https://maps.googleapis.com/maps/api/place/textsearch/json?key='+ENV["PLACES_API_KEY"]+'&query=restaurants+in+washington+DC'
# puts url_to_fetch
# response = RestClient.get(url_to_fetch)

# restaurantArr = JSON.parse(response.body)["results"]

# # byebug
# restaurantArr.each do |restaurant|
# 	Restaurant.create(
# 		place_id: restaurant["place_id"], 
# 		name: restaurant["name"], 
# 		address: restaurant["formatted_address"], 
# 		rating: restaurant["rating"])
# end




# 'hello'