class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_cache_headers
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters # only permited parameters student_id, name, password, remember_me
    devise_parameter_sanitizer.permit(:sign_up, keys: [:student_id, :name, :email, :password, :remember_me])
  end

  def after_sign_in_path_for(resource) # will direct user after login to user page
    posts_path(resource)
  end

  private

  def set_cache_headers
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = expires_now()
  end
end
