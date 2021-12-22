Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # movies routes
  resources :movies, only: [:index, :show, :new, :create]

  resources :lists

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
