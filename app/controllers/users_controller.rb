class UsersController < ApplicationController

  def show
    if signed_in?
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Dream Land!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
