Rails.application.routes.draw do

  get 'admin_panel', to: 'admins#admin_panel'
  get "sessions/login", to: "sessions#login"
  resources :admins
  # resources :sessions
  delete 'logout', to: 'sessions#destroy'
  resources :password_resets, only: [ :new, :create]
  get '/password_resets/edit' => 'password_resets#edit', as: :edit_password_reset
  put '/password_resets/' => 'password_resets#update', as: :password_reset
end

# <li><%= link_to "Log Out", session_path(session), method: :delete %></li>
