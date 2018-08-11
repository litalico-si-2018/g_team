Rails.application.routes.draw do
  resources :articles
  root :to => 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#create'
  get '/articles/:id', to: 'articles#show'
end
