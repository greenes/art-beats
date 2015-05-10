class WelcomeController < ApplicationController

  def index
    @pieces = Piece.all
    @galleries = Gallery.all
    @users = User.all
  end


end
