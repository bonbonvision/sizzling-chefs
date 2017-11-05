class RegistrationsController < Devise::RegistrationsController

  private

  # def after_sign_in_path_for(resource)
  #   if resource.role == 'chef'
  #     redirect_to dashboard_path
  #   else
  #     redirect_to root_path
  #   end
  # end
  
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :type, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :type, :password, :password_confirmation, :current_password)
  end
end