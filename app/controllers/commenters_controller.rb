class CommentersController < ApplicationController
  def new
    @comment = Commenter.new(params[:commenter])
  end

    def create
      @user = User.find(params[:user_id])
      @comment = @user.commenters.create!(params[:commenter])
      redirect_to @user
    end

  end
