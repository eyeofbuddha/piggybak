Rails.application.routes.draw do
  mount Piggybak::Engine => '/checkout', :as => 'piggybak'

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
end
