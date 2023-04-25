class Color < ApplicationRecord
  validates :color, presence: true, allow_blank: false
  belongs_to :shoes
end
