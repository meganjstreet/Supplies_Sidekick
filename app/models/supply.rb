class Supply < ApplicationRecord
  validates :name, :description, :address, :img_url, :price, :quantity, presence: true
  belongs_to :user
end
