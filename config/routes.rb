Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'resumes#index'
  resources :resumes
  resources :posts
  resources :users
  get 'static_pages/home'
  get 'static_pages/home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
end
