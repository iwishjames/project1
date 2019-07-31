class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new user_params # Set up the user but don't save yet.
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      @user.image = req["public_id"]
      @user.save
    end
    if @user.save # .save returns true if the user is valid, and false otherwise.
        session[:user_id] = @user.id # Login when signing up.
        # redirect_to root_path
    else
        render :new
    end
    redirect_to root_path
  end

  def edit
    @user = @current_user
  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @current_user.image = req["public_id"]
    end
    @current_user.update user_params
    @current_user.save
    redirect_to users_show_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :student_class, :mentor_class, :image, :role_type, :network_github, :network_linkedin, :network_twitter, :start_date)
  end
end
