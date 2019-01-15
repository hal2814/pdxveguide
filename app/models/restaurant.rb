class Restaurant < ApplicationRecord
  acts_as_taggable

  has_many :comments
  validates_presence_of :title, :location, :hours, :restaurant_type
end
