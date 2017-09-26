require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "create" do
    context "when succeed" do
      it "should update avarage review accordingly" do
        cuisine = Cuisine.create(name: 'aaa')
        restaurant = Restaurant.create(name: 'rest1', cuisine_id: cuisine.id, address: 'address 1', does_accept_10bis: true, delivery_sla_in_minutes: 15)
        Review.create(reviewer: 'rev1', rating: 3, comment: 'comm comm 1', restaurant_id: restaurant.id)

        expect(Restaurant.first.restaurant_reviews_metadatum.reviews_count).to eql(1)
        expect(Restaurant.first.restaurant_reviews_metadatum.avarage_score).to eql(3.0)
      end
    end
  end
end
