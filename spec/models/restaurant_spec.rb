require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        cuisine = Cuisine.create(name: 'aaa')
        Restaurant.create(name: 'rest1', cuisine_id: cuisine.id, address: 'address 1', does_accept_10bis: true, delivery_sla_in_minutes: 15)
        expect(Restaurant.all.count).to eql(1)
        expect(Restaurant.first.restaurant_reviews_metadatum.reviews_count).to eql(0)
      end
    end
  end
end
