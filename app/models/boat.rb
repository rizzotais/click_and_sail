class Boat < ApplicationRecord
  belongs_to :user
  validates :size, :brand, :year, :type, presence: true
end
