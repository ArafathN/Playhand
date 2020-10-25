Rails.application.routes.draw do
  resources :toys
  devise_for :users
  root 'pages#home'

  get 'dashboard' => 'pages#dashboard'
end
