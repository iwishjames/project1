class PointsController < ApplicationController
  before_action :find_post
  before_action :find_point, only: [:destroy]

# Checks to see if they have already given a point. Then don't give a point.
  def create
    if already_clicked?
      flash[:notice] = "You can only award a single point to a post!"
      # What if we took out this error? #
    else
      @post.points.create(user_id: @current_user.id)
    end
    redirect_to post_path(@post)
  end

  def destroy
    #possibly not have this?
    if !(already_clicked?)
      flash[:notice] = "Cannot remove point"
    else
      @point.destroy
    end
    redirect_to post_path(@post)
  end


  private

  def already_clicked?
  @point = Point.where(user_id: @current_user.id, post_id: params[:post_id]).exists?
  @point
  end

  def find_post
    @post = Post.find params[:post_id]
  end

  def find_point
   @point = @post.points.find params[:id]
  end
end
