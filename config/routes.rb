# == Route Map (Updated 2014-06-15 23:23)
#
#            Prefix Verb   URI Pattern                                      Controller#Action
#              root GET    /                                                families#index
#   family_children GET    /families/:family_id/children(.:format)          children#index
#                   POST   /families/:family_id/children(.:format)          children#create
#  new_family_child GET    /families/:family_id/children/new(.:format)      children#new
# edit_family_child GET    /families/:family_id/children/:id/edit(.:format) children#edit
#      family_child GET    /families/:family_id/children/:id(.:format)      children#show
#                   PATCH  /families/:family_id/children/:id(.:format)      children#update
#                   PUT    /families/:family_id/children/:id(.:format)      children#update
#                   DELETE /families/:family_id/children/:id(.:format)      children#destroy
#          families GET    /families(.:format)                              families#index
#                   POST   /families(.:format)                              families#create
#        new_family GET    /families/new(.:format)                          families#new
#       edit_family GET    /families/:id/edit(.:format)                     families#edit
#            family GET    /families/:id(.:format)                          families#show
#                   PATCH  /families/:id(.:format)                          families#update
#                   PUT    /families/:id(.:format)                          families#update
#                   DELETE /families/:id(.:format)                          families#destroy
#


#To update the chart above, execute $annotate --routes'





Rails.application.routes.draw do

  # resources :family
  root to: 'families#index'

  resources :families do
    resources :children
  end
  







  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
