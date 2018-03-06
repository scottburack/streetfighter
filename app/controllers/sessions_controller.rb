class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
<<<<<<< HEAD
    user = User.find_by(name: params[:user][:name])
    # byebug
    user = user.try(:authenticate, params[:user][:password])
    if user
      session[:user_id] = user.id
      @user = user
      redirect_to controller: "users", action: :show
    else
      render :new
=======
    @user = User.find_by(name: params[:user][:name])
    @user = @user.try(:authenticate, params[:user][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to controller: "users", action: :show
    else
      redirect_to controller: "welcome", action: "welcome"
>>>>>>> refs/remotes/origin/master
    end
  end

end
