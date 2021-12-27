class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @posts = policy_scope(Blog)
  end

  def show
  end

  def new
    @post = Blog.new
    authorize @post
  end

  def create
    @post = Blog.new(set_blog)
    @post.user = current_user
    authorize @post
    @post.save

    redirect_to blog_path(@post)
  end

  def edit
  end

  def update
    @post.update(blog_params)
    redirect_to blog_path(@post)
  end

  def destroy
    @post.destroy

    redirect_to movies_path
  end

  private

  def set_blog
    @post = Blog.find(params[:id])
    authorize @post
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :post_url)
  end
end
