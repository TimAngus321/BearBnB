class Cave < ApplicationRecord
  belongs_to :user
  validates :address, presence: true, uniqueness: true
  validates :square_meters, presence: true
  validates :occupancy, presence: true
  validates :price_per_night, presence: true
  validates :availability, presence: true, acceptance: { accept: true }
end
