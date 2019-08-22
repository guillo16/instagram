class PostsController < ApplicationController
  before_action :set_post, only: [:show, :create, :edit, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts.path
  end

  def edit
  end

  def update
    @post.update(post_params)
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post.detroy
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:posts).permit(:title, :photo)
  end
end
