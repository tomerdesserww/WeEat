require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'create' do
    context 'when succeed' do
      it 'should create a review metadata item' do
        FactoryGirl.create(:cuisine)
        restaurant = FactoryGirl.create(:restaurant)

        expect(restaurant.restaurant_reviews_metadatum.reviews_count).to eql(0)
      end
    end
  end

  describe 'create' do
    context 'when no matching cuisine' do
      it 'should throw an error' do
        expect { FactoryGirl.create(:restaurant) }.to raise_error
      end
    end
  end

  describe 'create' do
    context 'when 10bis support is not true or false' do
      it 'should throw an error' do
        FactoryGirl.create(:cuisine)

        expect { FactoryGirl.create(:restaurant, :invalid10bis) }.to raise_error
      end
    end
  end
end
