Rails.application.routes.draw do
  get 'home/index'

  devise_for :users

  authenticated :user do
    root 'users#show', as: :authenticated_root
  end

  root "home#index"
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out
  resources :votes, only: [:create]
  resources :users, only: [:show]
  resources :polls
  resources :groups

end
