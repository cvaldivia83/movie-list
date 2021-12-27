class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @movies = policy_scope(Movie)
  end

  def show
  end

  def new
    @movie = Movie.new
    authorize @movie
  end

  def create
    @movie = Movie.new(movie_params)
    authorize @movie
    @movie.save

    redirect_to movie_path(@movie)
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
    authorize @movie
  end

  def movie_params
    params.require(:movie).permit(:title, :overview, :tagline, :genre, :rating, :poster_url)
  end
end
