class Reservation < ApplicationRecord
  belongs_to :shoes, class_name: 'Shoe'
  belongs_to :user, class_name: 'User'
  validates :count, presence: true
  validates :size, presence: true
end
