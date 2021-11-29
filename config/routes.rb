Rails.application.routes.draw do

  get 'students/index'

  get 'sessions', to: 'sessions#new', as: :session_new
  post 'sessions', to: 'sessions#create', as: :session_create
  delete 'logout', to: 'sessions#destroy', as: :delete_session

  get 'users', to: 'users#new', as: :user_new
  post 'users', to: 'users#create', as: :user_create
  get 'users', to: 'users#index' 

  resources "states"
  resources "districts"
  resources "talukas"  


end

