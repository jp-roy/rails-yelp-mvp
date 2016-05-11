class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, :rating, :restaurant, presence: true
  validates :rating, :inclusion => 0..5, numericality: { only_integer: true }
end
