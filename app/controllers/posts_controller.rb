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
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      @post.image = req["public_id"]
      end
    @post.save
    redirect_to @post
  end


  def edit
    @post = Post.find_by :id=>params[:id]
  end

  def update
    post = Post.find_by :id=>params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      post.image = req["public_id"]
    end
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
