Rails.application.routes.draw do

  root "static#index"

  get "buy-sell-products" => 'static#products'
  post "product_data_collect" => 'static#product_data_collect'


  get "thanks" => 'static#thanks_for_email'

  get "consulting" => 'static#consulting'
  get "transportation" => 'static#transportation'

  get 'admin_panel', to: 'admins#admin_panel'
  get "sessions/login", to: "sessions#login"

  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  resources :admins
  resources :sessions
  resources :inventories

  resources :photos
  delete 'logout', to: 'sessions#destroy'
  resources :password_resets, only: [ :new, :create]
  get '/password_resets/edit' => 'password_resets#edit', as: :edit_password_reset
  put '/password_resets/' => 'password_resets#update', as: :password_reset

end
