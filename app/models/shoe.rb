class Shoe < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :images
  has_many :colors
  has_many :sizes
  has_many :reservations

  validates :name, :price, :description, :categroy, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
end
