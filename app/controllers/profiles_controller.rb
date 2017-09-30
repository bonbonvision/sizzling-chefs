class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    redirect_to chef_profile_path(@profile)
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:subtitle, :bio, :city, :state, :favorite_dish, :inspiration)
  end

end
