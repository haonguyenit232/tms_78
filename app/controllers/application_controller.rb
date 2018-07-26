class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_user_parameters, if: :devise_controller?

  protected

  def configure_user_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit :name, :email, :password, :password_confirmation,
        :avatar_url
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit :name, :email, :password, :password_confirmation,
        :current_password, :avatar_url
    end
  end

  def verify_admin
    if current_user.trainee?
      flash[:danger] = t "message.permission_denied"
<<<<<<< 18090e487c606a0dae0d132c21924f7fd31b1955
      redirect_to root_path
=======
      redirect_to root_url
>>>>>>> confix_login
    end
  end

  def verify_admin_only
    unless current_user.admin?
      flash[:warning] = t "message.permission_denied"
<<<<<<< 18090e487c606a0dae0d132c21924f7fd31b1955
      redirect_to root_path
=======
      redirect_to root_url
>>>>>>> confix_login
    end
  end
end
