Rails.application.routes.draw do
  resources :marksheets, only:[:index]
  resources  :subjects
  resources :student_subjects
  resources :studentgrades
  
  devise_for :users
  root 'home#index'
  namespace :admin do
    
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
