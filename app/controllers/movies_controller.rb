class MoviesController < ApplicationController
  before_action :find_movie, only: [ :edit, :show, :update, :destroy ]

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
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Successfully updated the movie!'
    else
      render 'edit'
    end
  end

  def destroy 
    @movie.destroy
    redirect_to movies_url, notice: 'Successfully deleted the movie.'
  end

  private

  def movie_params
  	params.require(:movie).permit(:tittle, :image_attributes => [:id, :img])
  end

  def find_movie
	@movie = Movie.find(params[:id])
  end

end
