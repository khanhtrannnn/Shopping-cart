class SessionController < ApplicationController

  layout 'login'

  skip_before_action :authenticate, only: [:login, :login_process]

  def login
    reset_session
  end

  def login_process
    @user = User.where(username: params[:user][:username], password: params[:user][:password]).first
    if @user
      session[:user_id] = @user.id
      redirect_to '/main/main_page'
    else
      redirect_to '/session/login'
    end
  end

  def logout
    session[:user_id] = nil
    @current_user = nil
    redirect_to '/session/login'
  end
end

