
class UsersController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

  def index
    @users = User.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @user }
    end
  end

  def show
    @user = current_user
    render json: @user
  end

  def update
      @user = current_user
    if @user.update( user_params )
      redirect_to @user
    else
      render :edit
    end
    render json: @user
  end

  def destroy
    @galleries = Gallery.all
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    render json: @users
  end

private
  def gallery_params
    params.require(:user).permit(:name, :bio, :prof_pic, :contact_info)
  end


end
