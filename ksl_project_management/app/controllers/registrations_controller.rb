class RegistrationsController < Devise::RegistrationsController
  def create
    super #Nothing special here.
  end

  protected

  def after_sign_up_path_for(resource)
    posts_path(resource)
  end
end
