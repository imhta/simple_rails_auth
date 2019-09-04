class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      puts "authenticated"
    else
      render 'new'
    end
  end

  def destroy

  end
end
