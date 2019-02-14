class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    restaurant_id = params[:id].to_i
    @review.restaurant = Restaurant.find(restaurant_id)
    @review.save!
    redirect_to restaurant_path(restaurant_id)
  end

  private

  def review_params
  params.require(:review).permit(:content, :rating)
  end
end
