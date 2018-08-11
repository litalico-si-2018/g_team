Rails.application.routes.draw do
  root :to => 'static_pages#home'
  get '/help', to: 'static_pages#help'

end
