class CreateRestaurantReviewsMetadata < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_reviews_metadata do |t|
      t.integer :reviewsCount
      t.float :avarageScore

      t.timestamps
    end
  end
end
