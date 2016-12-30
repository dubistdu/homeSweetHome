class Home < ApplicationRecord
  attachment :images
  validates :images, presence:true
end
