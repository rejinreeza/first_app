class HomeController < ApplicationController
  def index
      @user = User.all
  end
  def new
      @user = User.create
  end
      
end
