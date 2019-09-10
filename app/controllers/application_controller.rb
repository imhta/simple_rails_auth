# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper

  def index; end

  def log_in(user)
    user.remember
    save_cookies(user)
    session[:user_id] = user.id
  end

  def forgot(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def sign_out
    forgot current_user
    session.delete :user_id
    @current_user = nil
  end

  private

  def save_cookies(user)
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
end
