class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_game_path
    else
      render :new
    end
  end

  def show
    @user = User.find(@user.id)
  end

  def index
    @users = User.all.sort_by {|user| -user.wins.to_i}
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :wins, :losses)
  end

end
