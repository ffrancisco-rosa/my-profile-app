class PostsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :destroy]
  def index
    @posts = policy_scope(Post)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def find
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, photos: [])
  end
end
