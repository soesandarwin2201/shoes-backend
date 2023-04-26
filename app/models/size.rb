class Size < ApplicationRecord
  validates :size, presence: true, allow_blank: false
  belongs_to :shoe, class_name: 'Shoe'
end
