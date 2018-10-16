class AddRestaurantTable < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :location
      t.string :hours
      t.string :type
      t.string :online_menu
      t.string :website
      t.string :thumbnail
      t.integer :rating

      t.timestamps
    end
  end
end
