class Supply < ApplicationRecord
  validates :name, :description, :address, :price, :quantity, presence: true
  belongs_to :user
  has_many :offers
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_address,
                  against: [:name, :description, :address],
                  using: {
                    tsearch: { prefix: true }
                  }

  geocoded_by :address

end
