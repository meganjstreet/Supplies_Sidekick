class Offer < ApplicationRecord
  validates :amount, :details, presence: true
  belongs_to :user
  belongs_to :supply
end
