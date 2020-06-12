class UsersController < ApplicationController
  def show
  	  @user = User.find(params[:id])
  	  @books = @user.books
  end
  def edit
  	  @user = User.find(params)
  end
  def update
  	  @user = User.find(params[id])
  	  @user.update(user_params)
  	  redirect_to user_path(@user.id)
  end
  def index
      @users=User.all
  end
  private
	def user_params
    params.require(:name).permit(:introduce)# :profile_image)
  end
end
