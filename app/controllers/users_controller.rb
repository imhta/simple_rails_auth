class UsersController < ApplicationController
  def new
    @user =User.new
  end

  def create
    @user =User.new(user_params)
    if @user.save
      redirect_to posts_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  private 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
