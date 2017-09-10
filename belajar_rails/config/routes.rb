Rails.application.routes.draw do
  root 'home#index'
  get 'home/landing'
  # devise_for :users
  devise_for :users, controllers: { registrations: "registrations" }, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  resources :posts
  get 'posts', to: 'posts#index'

  # devise_for :users, :controllers => {
  #   :registrations => "devise/sessions"
  #  }
  #
  # devise_scope :users do
  #   get "/sign_in" => "devise/sessions#new"
  #   # get 'signin',  to: 'org_people/sessions#new'
  #   # delete 'signout', to: 'org_people/sessions#destroy'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
