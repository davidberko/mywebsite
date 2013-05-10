class LandingPageController < ApplicationController

  def index
    @user = User.all
  end
end
