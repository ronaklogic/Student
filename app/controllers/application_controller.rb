class ApplicationController < ActionController::Base

  # helper_method :current_user

  # def authorize
  #   redirect_to users_path, alert: "Not authorized" if current_user.nil?
  # end

  # private
  # def current_user
  #   @current_user || User.find(session[:user_id]) if session[:user_id]
  # end

end
