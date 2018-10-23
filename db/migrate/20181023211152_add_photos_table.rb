class AddPhotosTable < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :url
      t.integer :user_profile_id

      t.timestamps
    end
  end
end
