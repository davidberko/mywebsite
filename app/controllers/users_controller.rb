class UsersController < ApplicationController
  http_basic_authenticate_with name: "David Berko", password: "db101191" , except: [:about, :future, :show]

  def index
    @users = User.all
  end

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

  def show
    @user = User.find(params[:id])
  end

  def about
    @users = User.all
  end


  def destroy
    @user = User.find(params[:id])
    if @user.delete
      redirect_to "index"
    else
      @user
    end
  end
end
