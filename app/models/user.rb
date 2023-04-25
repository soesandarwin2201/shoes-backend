class User < ApplicationRecord
     has_many :shoes
     has_many  :reservations
end
