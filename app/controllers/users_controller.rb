class UsersController < ApplicationController
  def show
    @posts = current_user.posts
    @user = current_user
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    redirect_to current_user
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :photo)
  end
end
