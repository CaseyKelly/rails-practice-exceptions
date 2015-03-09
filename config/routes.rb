Rails.application.routes.draw do
  root to: "exceptions#index"
  resources :users

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
  get '/signup' => 'users#new', as: :signup
  post '/signup' => 'users#create'
end
