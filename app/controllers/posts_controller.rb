class PostsController < ApplicationController
  before_action :check_for_login

  def new
    @post = Post.new
  end

  def create
    post = Post.create post_params
    @current_user.posts << post
    # @current_user.posts.create post_params
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title)
  end
end
