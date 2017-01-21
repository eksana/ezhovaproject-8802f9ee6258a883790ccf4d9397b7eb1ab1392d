class Platter < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  belongs_to :image

  validates_associated :genre, :image
  validates :name, :singer, :year, :genre_id, :user_id, presence: true
  validates :year, :genre_id, :image_id,  :user_id, numericality: true
end
