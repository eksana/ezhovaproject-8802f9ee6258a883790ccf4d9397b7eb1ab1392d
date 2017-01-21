class Genre < ApplicationRecord
  has_many :platters

  validates :name, presence: true
end
