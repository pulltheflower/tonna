class PostsController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    params[:page] ||= 1 
    @posts = Post.page(params[:page]).per(7)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find_by_fake_url(params[:id])
  end
end
