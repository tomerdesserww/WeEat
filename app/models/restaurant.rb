class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :reviews
  has_one :restaurant_reviews_metadatum
  after_create :create_restaurant_metadata

  validates :name, :does_accept_10bis, :address, :delivery_sla_in_minutes, presence: true
  validates :does_accept_10bis, inclusion: { in: [ true, false ] }



  def create_restaurant_metadata
    RestaurantReviewsMetadatum.create(reviews_count: 0, avarage_score: 0, restaurant_id: id)
  end
end
