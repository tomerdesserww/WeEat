class RestaurantsController < ApplicationController

  def all
    render json: Restaurant.all
  end

  def get
  end

  def create
    render json: Restaurant.create(restaurant_request_params)
  end

  def update
  end

  def restaurant_request_params
    params.permit(:name, :cuisine_id, :rating, :address, :does_accept_10bis, :delivery_sla_in_minutes)
  end
end
