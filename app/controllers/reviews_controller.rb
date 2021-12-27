class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.save

    redirect_to movie_path(params[:movie_id])
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
