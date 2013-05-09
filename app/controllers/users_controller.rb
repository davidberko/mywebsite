class UsersController < ApplicationController
  http_basic_authenticate_with name: "David Berko", password: "db101191"

  def new
    @user = User.new(params[:user])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to "index"
    else
      render "new"
    end
  end

  end
  def index
    @users = User.all
  end



