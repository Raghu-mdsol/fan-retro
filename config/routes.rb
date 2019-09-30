Rails.application.routes.draw do
  resources :dashboards
  devise_for :users
  get 'home/index'

  root 'home#index'
end
