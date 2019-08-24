class ReviewsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @review = Review.new(review_params)
    @review.post = @post
    @review.user = current_user
    authorize @review
      if @review.save
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
