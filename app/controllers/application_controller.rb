class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        # or =
        # if current_user is already a thing, then don't look for it
        # that way you only find the current_user one time
        # if current_user is not true, then do the command User.find
    end
    helper_method(:current_user)
    #this calls the helper method on user when the action loads

  # You cannot view any show page unless you are logged in
    def authorize # we can call it anything
      redirect_to '/login' unless current_user # if there is a current user then it will never redirect
    end

end # end of class
