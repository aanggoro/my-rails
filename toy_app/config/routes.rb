Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/help'

  get  '/signup',  to: 'users#new'

  resources :microposts
  root 'users#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
