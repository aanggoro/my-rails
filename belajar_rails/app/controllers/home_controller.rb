class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def index

  end

  def landing
    # if current_user?
      redirect_to posts_path
    # else
    #   new_user_session_path
    # end
  end

end
