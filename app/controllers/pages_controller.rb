class PagesController < ApplicationController
  def home
  	@sports = Sport.all
  	@admin = Admin.last
  	@movies = Movie.all
  	@music = Music.all
  end

  def contact
  end
end
