class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :place_id
      t.string :name
      t.string :address
      t.float :rating

      t.timestamps
    end
  end
end
