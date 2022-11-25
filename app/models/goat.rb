class Goat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_favoritable
  has_one_attached :photo
  validates :rating, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 5.0 }
end
