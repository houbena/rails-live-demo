class ReviewsController < ApplicationController

  before_action :set_movie

  def create
    @movie.reviews.create! reviews_params
    redirect_to @movie
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def reviews_params
      params.required(:review).permit(:body)
    end

end
