Rails.application.routes.draw do
  root :to => 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/articles/:id', to: 'articles#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/grade/:id', to: 'articles#show_by_grade', as: 'show_by_grade'
  get '/subject/:id', to: 'articles#show_by_subject', as: 'show_by_subject'
  resources :users
  resources :articles
  resources :grades
  resources :likes, only: [:create, :destroy]
end
