class SportsController < ApplicationController
  before_action :find_sport, only: [ :edit, :show, :update, :destroy ]

  def index
  	@sports = Sport.all
  end

  def new
  	@sport = Sport.new
  	@sport.build_image
  end

  def edit
  end

  def create
  	@sport = Sport.new(sport_params)
  	if @sport.save
  		redirect_to @sport, notice: "Successfully added sport!"
  	else
  		render 'new'
  	end
  end

  def show
  end

  def update
    if @sport.update(sport_params)
      redirect_to @sport, notice: 'Successfully updated the sport!'
    else
      render 'edit'
    end
  end

  def destroy 
    @sport.destroy
    redirect_to sports_url, notice: 'Successfully deleted the sport.'
  end

  private

  def sport_params
  	params.require(:sport).permit( :name, :description, :image_attributes => [:img] )
  end

  def find_sport
	  @sport = Sport.find(params[:id])
  end

end
