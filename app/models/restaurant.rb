class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :reviews
  has_one :restaurant_reviews_metadatum
end
