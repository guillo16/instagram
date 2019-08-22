class UsersController < ApplicationController

  def show
    @posts = current_user.posts
    @user = current_user
    authorize @user
  end

  def edit
  end

  def update
  end

  private


end
