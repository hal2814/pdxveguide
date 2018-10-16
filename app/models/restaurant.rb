class Restaurant < ApplicationRecord
  has_many :comments
  validates_presence_of :title, :location, :hours, :type
end
