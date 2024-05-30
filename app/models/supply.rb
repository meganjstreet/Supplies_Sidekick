class Supply < ApplicationRecord
  validates :name, :description, :address, :price, :quantity, presence: true
  belongs_to :user
  has_many :offers
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
