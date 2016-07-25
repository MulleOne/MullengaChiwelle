class MoviesController < ApplicationController
  before_action :find_movie, only: [ :edit, :show ]

  def index
  	@movies = Movie.all
  end

  def new
  	@movie = Movie.new
  	@movie.build_image
  end

  def edit
  end

  def create
  	@movie = Movie.new(movie_params)
  	if @movie.save
  		redirect_to @movie, notice: "Successfully added Movie!"
  	else
  		render 'new'
  	end
  end

  def show
  end

  def update
  end

  def destroy 
    @movie.destroy
    redirect_to movies_url, notice: 'Successfully deleted the movie.'
  end

  private

  def movie_params
  	params.require(:movie).permit(:tittle, :image_attributes => [:img])
  end

  def find_movie
	@movie = Movie.find(params[:id])
  end

end
