class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :address, :city, :state, :zipcode, :restaurant_rating, :cuisine
  has_many :reviews
end
