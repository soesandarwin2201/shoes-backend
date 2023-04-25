class User < ApplicationRecord
     has_many :shoes
     has_many :reservations
     validates :name, presence: true, uniqueness: { message: 'Must be unique'},
                length: { in: 3..250, message: 'Must be a string of at least 3 characters' }
     validates :name, :email, :password, presence: true
     validates :password, length: { minimum: 8 }
end
