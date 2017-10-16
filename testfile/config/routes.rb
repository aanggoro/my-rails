Rails.application.routes.draw do
  resources :resume, only: [:index, :new, :create, :destroy]
  root 'resume#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
