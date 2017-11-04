class ProfilesController < ApplicationController
  before_action :authenticate_chef!

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    redirect_to chef_profile_path(@profile)
  end

  def show
    @profile = @chef.profile
  end

  private

  def profile_params
    params.require(:profile).permit(:subtitle, :bio, :city, :state, :favorite_dish, :inspiration)
  end

end
