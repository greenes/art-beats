
class GalleriesController < ApplicationController


  def index
    @galleries = Gallery.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @galleries }
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
    userid = @gallery.user_id
    @user = User.find(userid)
  end

  def create
    @galleries = Gallery.all
    @gallery = users.galleries.new(gallery_params)
      if @gallery.save
        render json: @galleries
      else
       render :new
     end
     render json: @gallery
  end

  def update
      @gallery = Gallery.find( params[:id] )
    if @gallery.update( gallery_params )
      redirect_to @gallery
    else
      render :edit
    end

  end

  def destroy
    @galleries = Gallery.all
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    render json: @galleries
  end

private
  def gallery_params
    params.require(:gallery).permit(:user_id, :gallery_name, :description)
  end


end
