module SessionsHelper
  def log_in user
    session[:user_id] = user.id
  end
  
  def save_cookies user
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

end
