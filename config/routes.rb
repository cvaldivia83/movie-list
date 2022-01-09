Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # landing page after sign in
  get '/welcome', to: 'pages#welcome'

  # movies routes
  resources :movies, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end

  resources :lists do
    resources :bookmarks, only: [:create]
  end

  resources :blogs

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
