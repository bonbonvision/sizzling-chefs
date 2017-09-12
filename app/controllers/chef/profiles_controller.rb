class Chef::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.profile
    redirect_to chef_profile_path(@profile)
  end

  private

  def profile_params
    params.require(:profile).permit(:subtitle, :bio, :city, :state, :favorite_dish, :inspiration)
  end
end
