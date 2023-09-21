Rails.application.routes.draw do
  get 'rooms/index'
  # get 'session/create'
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/signout', to: 'session#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :rooms
  resources :users
  root 'rooms#index'
  # root 'pages#home'
end
