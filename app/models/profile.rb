class Profile < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :chef

  # validates :subtitle, presence: true
  # validates :bio, presence: true
  
end
