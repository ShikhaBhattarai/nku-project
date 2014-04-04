class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :require_authentication
 
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id].present?
  end
  helper_method :current_user

  def require_authentication
    if current_user
      true
    else
      redirect_to new_session_path
    end
  end
end
