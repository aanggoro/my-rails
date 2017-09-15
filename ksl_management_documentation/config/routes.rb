Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  get 'home/user_page'

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
