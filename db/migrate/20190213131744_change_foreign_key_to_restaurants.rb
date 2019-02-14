class ChangeForeignKeyToRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :restaurant_id_id, foreign_key: true
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
