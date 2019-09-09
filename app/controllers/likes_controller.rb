class LikesController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @likes = policy_scope(Like).order(created_at: :asc)
  end

  def create
    @post = Post.find(params[:post_id])
    @like = Like.new
    @like.post = @post
    @like.user = current_user
    authorize @like
      if @like.save
        respond_to do |format|
        format.html { redirect_to request.referrer }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to root_path
  end

  private

  end
