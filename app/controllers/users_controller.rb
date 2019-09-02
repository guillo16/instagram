class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = policy_scope(User).where.not(id: current_user.id)
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render action: :follow }
      end
    end
  end

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

  def set_user
    @user = User.find(params[:id])
  end
end
