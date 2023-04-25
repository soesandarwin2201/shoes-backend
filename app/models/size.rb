class Size < ApplicationRecord
  validates :size, presence: true, allow_blank: false
  belongs_to :shoes
end
