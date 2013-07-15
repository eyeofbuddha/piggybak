Piggybak::Engine.routes.draw do
  scope :module => "piggybak" do
    # cart actions
    get "/cart" => "cart#show", :as => :cart
    post "/cart/add" => "cart#add", :via => :post, :as => :cart_add
    match "/cart/update" => "cart#update", :via => :post, :as => :cart_update
    match "/cart/remove/:item" => "cart#remove", :via => :delete, :as => :remove_item

    # order actions
    root :to => 'orders#submit', :as => :orders, :via => [:get, :post]
    get "/receipt" => "orders#receipt", :as => :receipt
    get "/orders/shipping" => "orders#shipping", :as => :orders_shipping
    get "/orders/tax" => "orders#tax", :as => :orders_tax
    get "/orders/geodata" => "orders#geodata", :as => :orders_geodata

    # list orders
    get "/orders" => "orders#list", :as => :orders_list

    # admin actions
    get "/admin/orders/:id/email" => "orders#email", :as => :email_order
    get "/admin/orders/:id/download" => "orders#download", :as => :download_order, :format => "txt"
    get "/admin/orders/:id/cancel" => "orders#cancel", :as => :cancel_order
  end
end
