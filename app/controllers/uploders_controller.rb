class UplodersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  	@user_albums = @user.albums
  end

end
