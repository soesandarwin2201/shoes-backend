class Shoe < ApplicationRecord
  belongs_to :users
  has_many :images
  has_many :colors
  has_many :size
  has_many :reservations
end
