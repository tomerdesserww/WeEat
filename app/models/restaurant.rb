class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :reviews
  has_one :restaurant_reviews_metadatum

  validates :name, :does_accept_10bis, :address, :delivery_sla_in_minutes, presence: true
  validates :does_accept_10bis, inclusion: { in: [ true, false ] }
end
