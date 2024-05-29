class Supply < ApplicationRecord
  validates :name, :description, :address, :img_url, :price, :quantity, presence: true
  belongs_to :user
  has_many :offers
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
