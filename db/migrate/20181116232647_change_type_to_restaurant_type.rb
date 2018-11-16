class ChangeTypeToRestaurantType < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :type, :restaurant_type
  end
end
