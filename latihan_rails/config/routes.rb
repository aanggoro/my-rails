Rails.application.routes.draw do
  # devise_for :users
  root 'posts#index'
  resources :posts

  devise_for :users#, controllers: {
  # registrations: "users/registrations",
  # sessions: "users/sessions",
  # passwords: "users/passwords" ,
  # confirmations: "users/confirmations" }
  #
  # devise_scope :users do
  #   get 'signup',  to: 'users/registrations#new'
  #   get 'signin',  to: 'users/sessions#new'
  #   delete 'signout', to: 'users/sessions#destroy'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
