class Review < ApplicationRecord
  after_create :update_average_rating
  belongs_to :restaurant

  def update_average_rating
    reviewsMetadata = restaurant.restaurant_reviews_metadatum
    avarageRating = (reviewsMetadata.reviewsCount * reviewsMetadata.avarageScore + rating) / (reviewsMetadata.reviewsCount + 1)
    restaurant.restaurant_reviews_metadatum.update(reviewsCount: reviewsMetadata.reviewsCount + 1, avarageScore: avarageRating)
  end
end
