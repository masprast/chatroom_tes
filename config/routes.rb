Rails.application.routes.draw do
  get 'users/show'
  get 'users/get_name'
  get 'pesan/create'
  get 'pesan/p_param'
  get 'rooms/index'
  # get 'session/create'
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/signout', to: 'session#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :rooms do
    resources :pesans
  end
  resources :users
  root 'rooms#index'
  # root 'pages#home'
end
