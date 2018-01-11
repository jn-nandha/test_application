class UsersController < ApplicationController
  def show
 	@user = User.find(params[:id])
 	# @user = select * from User where User.id = 1
 #	puts @user.attributes.to_yaml
  end
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  	else
  		render 'new'
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end	
