Rails.application.routes.draw do
  resources :likes, only: [:create, :destroy]
  resources :articles
  root :to => 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/articles/:id', to: 'articles#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
