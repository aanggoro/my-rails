class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
    if user_signed_in?
      home_landing_path
    else
      new_user_session_path
    end
  end
end
