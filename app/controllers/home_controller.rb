class HomeController < ApplicationController
  def index
      @users = User.all
      @user = User.new
  end
  def create
      @users = User.all
      @user = User.new(user_params)
      if @user.save
	  flash[:success] = 'saved successfully'
      else
	  flash.now[:error] = 'user not saved'
      end
      render '/home/index'
  end
private

    def user_params
	params.require(:user).permit(:name, :age, :sex)
    end

end
