module SessionsHelper


  # Returns true if the user is logged in, false otherwise.
    def logged_in?
      !session[:user_id].nil?
    end
end
