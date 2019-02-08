class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_id, :content, :rating
  belongs_to :restaurant
  belongs_to :user
end
