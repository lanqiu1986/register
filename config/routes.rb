Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'resumes#index'
  resources :resumes
  resources :posts
  get 'static_pages/home'
  get 'static_pages/home'
end
