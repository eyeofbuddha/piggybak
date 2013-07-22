Rails.application.routes.draw do

  resources :products

  mount RailsAdmin::Engine => '/admin', :as => 'admin'
  mount Piggybak::Engine => "/piggybak"

  root to: 'products#index'

end
