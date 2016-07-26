class MusicController < ApplicationController
  before_action :find_music, only: [ :edit, :show, :update, :destroy ]

  def index
  	@music = Music.all
  end

  def new
  	@music = Music.new
  	@music.build_image
  end

  def edit
  end

  def create
  	@music = Music.new(music_params)
  	if @music.save
  		redirect_to @music, notice: "Successfully added music!"
  	else
  		render 'new'
  	end
  end

  def show
  end

  def update
    if @music.update(music_params)
      redirect_to @music, notice: 'Successfully updated the music!'
    else
      render 'edit'
    end
  end

  def destroy 
    @music.destroy
    redirect_to music_url, notice: 'Successfully deleted the music.'
  end

  private

  def music_params
  	params.require(:music).permit( :artist, :description, :image_attributes => [:img] )
  end

  def find_music
	@music = Music.find(params[:id])
  end

end
