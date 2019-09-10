Rails.application.routes.draw do
  root 'posts#index'
  get '/newpost', to: 'posts#new'
  get 'posts/new'
  get '/posts', to: 'posts#index'
  get '/login', to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
