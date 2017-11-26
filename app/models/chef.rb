class Chef < User
  has_one :profile
  has_many :events 
end
