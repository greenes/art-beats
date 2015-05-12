class ArtistsController < ApplicationController
  before_action :if_current_user_has_no_profile

  def index
    @artists = Artist.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @artists }
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @galleries = @artist.galleries.all

  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update( artist_params )
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artists = Artist.all
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to @artists
  end

private
  def artist_params
    params.require(:artist).permit(:name, :bio, :prof_pic, :contact_info)
  end

  def if_current_user_has_no_profile
    if current_artist
      if current_artist.profile
      else
        redirect_to new_artist_profile_path
      end
    else
    end
  end


end
