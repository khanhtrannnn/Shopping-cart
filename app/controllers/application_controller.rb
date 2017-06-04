class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate

  def authenticate
    if session[:user_id].nil?
      redirect_to '/session/login'
    end

    @current_user = User.find(session[:user_id])
  end
end
