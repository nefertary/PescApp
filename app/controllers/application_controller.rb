class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Devise doing his job
  before_action :authenticate_user!
  layout :layout_by_resource

  add_breadcrumb "Inicio", "/"

  def after_sign_in_path_for(resource)
    :dashboard_home
  end  

  private
	  def layout_by_resource
	  	return "public" if devise_controller?
	  	"application"
	  end
end
