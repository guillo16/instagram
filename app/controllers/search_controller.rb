class SearchController < ApplicationController
  skip_after_action :verify_policy_scoped, :only => :index
  def index
    if params[:query].start_with?('#')
      query  = params[:query].gsub('#', '')
      @posts = Post.joins(:hash_tags).where(hash_tags: {name:    query})
    else
      @posts = Post.where("title like ?", "%#{params[:query]}%")
    end

  end
end
