Rails.application.routes.draw do

  get 'session/login'

  post 'session/login_process'

  get 'session/logout'

  resources :product

  root 'session#login'
end

# Prefix Verb          URI Pattern                 Controller#Action
# product_index GET    /product(.:format)          product#index
#               POST   /product(.:format)          product#create
# new_product   GET    /product/new(.:format)      product#new
# edit_product  GET    /product/:id/edit(.:format) product#edit
# product       GET    /product/:id(.:format)      product#show
#               PATCH  /product/:id(.:format)      product#update
#               PUT    /product/:id(.:format)      product#update
#               DELETE /product/:id(.:format)      product#destroy
#







































# get 'product/index'
#
# get 'product/new'
#
# get 'product/create'
#
# get 'product/show'
#
# get 'product/edit'
#
# get 'product/update'
#
# get 'product/destroy'
