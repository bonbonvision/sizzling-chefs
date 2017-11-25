class RegistrationsController < Devise::RegistrationsController

  private

  def after_sign_in_path_for(resource)
    if resource.is_a? Chef
      dashboard_path
    else
      root_path
    end
  end
  
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :type, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :type, :password, :password_confirmation, :current_password)
  end
end