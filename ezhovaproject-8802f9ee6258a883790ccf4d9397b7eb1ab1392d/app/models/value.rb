class Value < ApplicationRecord
  belongs_to :user
  belongs_to :image

  validates :value, :user_id, :image_id, presence: true
  validates :user_id, :image_id, :value, numericality: true
end
