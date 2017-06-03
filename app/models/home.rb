class Home < ApplicationRecord
  attachment :images
  validates :images, presence:true

  def self.search_by_square_footage(min_square)
    where("square_foot >= ?", min_square)
  end

  # def self.search_by_square_footage(min_square, max_square)
  #   where("square_foot between ? and ?", min_square, max_square)
  # end

  def self.search(search)
    where("square_foot ILIKE ? OR price ILIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
