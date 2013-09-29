class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  def authenticate_admin
    unless current_user.has_role? :admin
      flash[:alert] = t(:admin_protected)
      redirect_to root_path
    end
  end

end
