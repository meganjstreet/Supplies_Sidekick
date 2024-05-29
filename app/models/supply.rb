class Supply < ApplicationRecord
  validates :name, :description, :address, :price, :quantity, presence: true
  belongs_to :user
  has_many :offers
  has_one_attached :photo
end
