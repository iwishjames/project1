class PostsController < ApplicationController
before_action :check_for_login, :only => [:edit, :update, :new, :create, :index]

  def index
    @posts = Post.all.order(:created_at => :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create post_params
    # @post.user_id = @current_user.id
    @post.save
    redirect_to @post
  end

  def edit
    @post = Post.find_by :id=>params[:id]
  end

  def update
    post = Post.find_by :id=>params[:id]
    post.update post_params
    redirect_to post
  end

  def show
    @post = Post.find params[:id]
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :hashtag, :image, :user_id)
  end
end
