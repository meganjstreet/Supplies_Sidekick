class Supply < ApplicationRecord
  validates :name, :description, :address, :price, :quantity, presence: true
  belongs_to :user
  has_many :offers
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
