class Reservation < ApplicationRecord
  belongs_to :shoes
  belongs_to :users
end
