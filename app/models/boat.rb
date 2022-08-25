class Boat < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  validates :size, presence: true
  validates :brand, presence: true
  validates :year, presence: true
  validates :boat_type, presence: true
end
