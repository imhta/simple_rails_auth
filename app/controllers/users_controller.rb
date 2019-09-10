# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      @current_user = @user
      redirect_to posts_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit; end

  def update; end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
