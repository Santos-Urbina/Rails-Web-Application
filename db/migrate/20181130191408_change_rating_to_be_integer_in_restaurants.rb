class ChangeRatingToBeIntegerInRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :rating, :integer
  end
end
