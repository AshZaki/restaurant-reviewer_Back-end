require 'open-uri'

class Api::V1::RestaurantsController < ApplicationController

	def index
		# puts params
		if params["searchtype"] == "textsearch"
			url_to_fetch = 'https://maps.googleapis.com/maps/api/place/textsearch/json?key='+ENV["PLACES_API_KEY"]+'&query='+params[:query]

			json_res = JSON.parse(RestClient.get(url_to_fetch).body)

			restaurant_arr = []
			json_res["results"].each do |restaurant|
				restaurant_hash = {}
				restaurant_hash[:place_id] = restaurant["place_id"]
				restaurant_hash[:name] = restaurant["name"]
				restaurant_hash[:address] = restaurant["formatted_address"]
				restaurant_hash[:rating] = restaurant["rating"]
				restaurant_hash[:photoreference] = restaurant["photos"][0]["photo_reference"]
				restaurant_arr.push(restaurant_hash)
			end
			my_response = {
				:next_page_token => json_res["next_page_token"],
				:results => restaurant_arr
			}
			render json: my_response
		elsif params["searchtype"] == "details"
			url_to_fetch = 'https://maps.googleapis.com/maps/api/place/details/json?placeid='+params[:placeid]+'&fields=id,name,rating,formatted_phone_number,formatted_address,opening_hours,photos,price_level,website,types&key='+ENV["PLACES_API_KEY"]
			render json: JSON.parse(RestClient.get(url_to_fetch).body)
		elsif params["searchtype"] == "photo"
			if params["maxwidth"] && params["maxheight"]
				photourl = 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=' + params["maxwidth"] + '&maxheight=' + params["maxheight"]+'&photoreference=' + params[:photoreference] + '&key=' + ENV["PLACES_API_KEY"]
			elsif params["maxwidth"]
				photourl = 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=' + params["maxwidth"] + '&photoreference=' + params[:photoreference] + '&key=' + ENV["PLACES_API_KEY"]
			elsif params["maxheight"]
				photourl = 'https://maps.googleapis.com/maps/api/place/photo?maxheight=' + params["maxheight"] +'&photoreference=' + params[:photoreference] + '&key=' + ENV["PLACES_API_KEY"]
			end
			data = open(photourl)
	  		send_data data.read, type: data.content_type, disposition: 'inline' 
		end
	end

	def show
		# render json: Restaurant.find(params[:id])



		# url_to_fetch = 'https://maps.googleapis.com/maps/api/place/textsearch/json?key='+ENV["PLACES_API_KEY"]+'&query=sushi+yoshi'
		# puts url_to_fetch
		# response = RestClient.get(url_to_fetch)

		# restaurantArr = JSON.parse(response.body)["results"]
		# render json: restaurantArr



		# byebug
		# restaurantArr.each do |restaurant|
		# 	Restaurant.create(
		# 		place_id: restaurant["place_id"], 
		# 		name: restaurant["name"], 
		# 		address: restaurant["formatted_address"], 
		# 		rating: restaurant["rating"])
		# end
	end
end
