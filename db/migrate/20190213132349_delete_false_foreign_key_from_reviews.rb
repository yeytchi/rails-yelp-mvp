class DeleteFalseForeignKeyFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :restaurant_id, foreign_key: true
  end
end
