class ReviewsController < ApplicationController
  # before_action :find_restaurant, only: %i[new create show]

  # def new
  #   @review = Review.new
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review.restaurant = @restaurant
  # end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end
end
