Rails.application.routes.draw do
  devise_for :views
  
  root 'home#index'
  namespace :admin do
    devise_for :users
      resources :substreams
      resources :subjects
      resources :students
      resources :streams
      resources :grades

      root to: "substreams#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
