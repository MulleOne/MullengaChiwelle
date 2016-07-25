class AdminController < ApplicationController
  before_action :find_admin, only: [ :edit, :show ]

  def index
  	 @admins = Admin.all
  end

  def new
  	 @admin = Admin.new
  	 @admin.build_image
  end

  def edit
  end

  def create
  	@admin = Admin.new(admin_params)
  	if @admin.save
  		redirect_to @admin, notice: "Successfully added Admin!"
  	else
  		render 'new'
  	end
  end

  def show
  end

  def update
  end

  private

  def admin_params
  	 params.require(:admin).permit(:first_name, :last_name, :message, :image_attributes => [:img] )
  end

  def find_admin
	   @admin = Admin.find(params[:id])
  end

end
