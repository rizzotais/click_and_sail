class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :check_out, :check_in, presence: true
end
