class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    @user = @user.try(:authenticate, params[:user][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to new_game_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
