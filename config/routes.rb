Rails.application.routes.draw do

  root "static#home"
  get 'admin_panel', to: 'admins#admin_panel'
  get "sessions/login", to: "sessions#login"

  resources :admins
  resources :sessions

  
end
