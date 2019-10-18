Rails.application.routes.draw do
 

  devise_for :users

   resources :dashboards do
   resources :retrospectives 
   end
 
  get 'home/index'


   get 'retrospectives/index'

  root 'home#index'
end
