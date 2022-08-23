class Boat < ApplicationRecord
  belongs_to :user

  validates :size, presence: true
  validates :brand, presence: true
  validates :year, presence: true
  validates :boat_type, presence: true
end
