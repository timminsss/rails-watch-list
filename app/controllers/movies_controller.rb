class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def bookmark
  end

  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview)
  end
end
