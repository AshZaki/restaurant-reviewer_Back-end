class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :type
      t.string :cuisine
      t.integer :restaurant_rating

      t.timestamps
    end
  end
end
