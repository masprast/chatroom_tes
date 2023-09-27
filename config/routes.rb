Rails.application.routes.draw do
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  get 'user/:id', to: 'users#show', as: 'user'

  resources :rooms do
    resources :messages
  end
  resources :users
  # root 'rooms#index'
end
