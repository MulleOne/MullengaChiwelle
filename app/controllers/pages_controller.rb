class PagesController < ApplicationController
  def home
  	@sports = Sport.all
  	@admin = Admin.find(1)
  	@movies = Movie.all
  	@music = Music.all
  end

  def contact
  end
end
