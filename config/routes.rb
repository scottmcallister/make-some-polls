Rails.application.routes.draw do
  resources :polls
  root to: 'polls#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#auth_fail'
  get '/sign_out', to: 'sessions#destroy', as: :sign_out
  resources :votes, only: [:create]
end
