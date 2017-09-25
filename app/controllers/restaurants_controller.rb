class RestaurantsController < ApplicationController

  def index
    render json: Restaurant.all
  end

  def show
    render json: Restaurant.find(params.require(:id))
  end

  def create
    restaurant = Restaurant.create!(name: params.require(:name),
                          address: params.require(:address),
                          does_accept_10bis: params.require(:does_accept_10bis),
                          delivery_sla_in_minutes: params.require(:delivery_sla_in_minutes),
                          cuisine_id: params.require(:cuisine_id))
    restaurant.restaurant_reviews_metadatum = RestaurantReviewsMetadatum.create(reviewsCount: 0, avarageScore: 0)
    render json: restaurant
  end

  def update
    render json: Restaurant.update!(id: params.require(:id),
                                  name: params[:name],
                                  address: params[:address],
                                  does_accept_10bis: params[:does_accept_10bis],
                                  delivery_sla_in_minutes: params[:delivery_sla_in_minutes],
                                  cuisine_id: params[:cuisine_id])
  end
end