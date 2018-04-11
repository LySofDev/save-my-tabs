Rails.application.routes.draw do
  resources :tabs
  devise_for :users
  root 'tabs#index'
end
