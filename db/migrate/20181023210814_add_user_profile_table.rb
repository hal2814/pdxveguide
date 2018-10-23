class AddUserProfileTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :bio
      t.string :instagram
      t.string :avatar
      t.integer :user_id

      t.timestamps
    end
  end
end
