class Events < ApplicationRecord 
  belongs_to :chef
  belongs_to :customer
end 