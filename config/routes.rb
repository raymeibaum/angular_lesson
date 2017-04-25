Rails.application.routes.draw do
  resources :appointments
  resources :doctors

  devise_for :users

  root to: 'client#index'
end
