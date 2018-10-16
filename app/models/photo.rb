class Photo < ApplicationRecord
  belongs_to :user_profile
  belongs_to :restaurant
end
