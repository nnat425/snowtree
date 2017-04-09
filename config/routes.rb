Rails.application.routes.draw do

  root "static#index"
  get 'admin_panel', to: 'admins#admin_panel'
  get "sessions/login", to: "sessions#login"

  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  resources :admins
  # resources :sessions
  resources :inventories
  delete 'logout', to: 'sessions#destroy'
  resources :password_resets, only: [ :new, :create]
  get '/password_resets/edit' => 'password_resets#edit', as: :edit_password_reset
  put '/password_resets/' => 'password_resets#update', as: :password_reset
end
