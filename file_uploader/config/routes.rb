Rails.application.routes.draw do
  get 'parse/index'

  get 'parse/show'
  post 'parse/show'

  resources :posts
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
