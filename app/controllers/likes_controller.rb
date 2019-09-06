class LikesController < ApplicationController
  before_action :find_post
  before_action :find_like, only: [:destroy]


  def create
    @post = Post.find(params[:post_id])
    @like = Like.new
    @like.post = @post
    @like.user = current_user
    authorize @like
    if @like.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.js # <-- idem
      end
    end
  end

  def destroy
    authorize @like
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to post_path(@post)
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end



  def already_liked?
    Like.where(user_id: current_user.id, post_id:
      params[:post_id]).exists?
  end
end
