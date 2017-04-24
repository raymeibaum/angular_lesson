Rails.application.routes.draw do
  resources :doctors
  devise_for :users
end
