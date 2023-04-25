class Reservation < ApplicationRecord
  belongs_to :shoes
  belongs_to :users
  validates :count, presence: true
  validates :size, presence: true
end
