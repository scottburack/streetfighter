class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user, :require_logged_in



  def logged_in?
    !!current_user
  end

  private

    def require_logged_in
      redirect_to(controller: "sessions", action: "new") unless logged_in?
    end

    def current_user
      @user ||= User.find(session[:user_id]) if session[:user_id]
    end


end
