Rails.application.routes.draw do

  get 'admin_panel', to: 'admins#admin_panel'
  
  resources :admins
  resources :sessions
end
