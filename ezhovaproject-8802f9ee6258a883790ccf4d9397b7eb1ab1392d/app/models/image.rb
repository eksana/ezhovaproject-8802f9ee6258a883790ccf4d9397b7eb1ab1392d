class Image < ApplicationRecord
  belongs_to :theme
  has_many :values
  has_one :platter

  validates_associated :theme, :values
  validates :name, :file, :theme_id, presence: true
  validates :theme_id, numericality: true
end
