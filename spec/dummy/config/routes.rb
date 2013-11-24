Rails.application.routes.draw do
  resources :products

  mount Piggybak::Engine => '/checkout', :as => 'piggybak'

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  devise_for :users

  root to: 'products#index'
end
