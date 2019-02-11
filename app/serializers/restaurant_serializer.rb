class RestaurantSerializer < ActiveModel::Serializer
  attributes :id,:place_id, :name, :address, :rating
  has_many :reviews
end
