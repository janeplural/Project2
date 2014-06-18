# == Route Map (Updated 2014-06-16 21:52)
#
#                   Prefix Verb   URI Pattern                                      Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                         devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                         devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                        devise/sessions#destroy
#            user_password POST   /users/password(.:format)                        devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                    devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                   devise/passwords#edit
#                          PATCH  /users/password(.:format)                        devise/passwords#update
#                          PUT    /users/password(.:format)                        devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                          devise/registrations#cancel
#        user_registration POST   /users(.:format)                                 devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                         devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                            devise/registrations#edit
#                          PATCH  /users(.:format)                                 devise/registrations#update
#                          PUT    /users(.:format)                                 devise/registrations#update
#                          DELETE /users(.:format)                                 devise/registrations#destroy
#                     root GET    /                                                welcome#index
#          family_children GET    /families/:family_id/children(.:format)          children#index
#                          POST   /families/:family_id/children(.:format)          children#create
#         new_family_child GET    /families/:family_id/children/new(.:format)      children#new
#        edit_family_child GET    /families/:family_id/children/:id/edit(.:format) children#edit
#             family_child GET    /families/:family_id/children/:id(.:format)      children#show
#                          PATCH  /families/:family_id/children/:id(.:format)      children#update
#                          PUT    /families/:family_id/children/:id(.:format)      children#update
#                          DELETE /families/:family_id/children/:id(.:format)      children#destroy
#                 families GET    /families(.:format)                              families#index
#                          POST   /families(.:format)                              families#create
#               new_family GET    /families/new(.:format)                          families#new
#              edit_family GET    /families/:id/edit(.:format)                     families#edit
#                   family GET    /families/:id(.:format)                          families#show
#                          PATCH  /families/:id(.:format)                          families#update
#                          PUT    /families/:id(.:format)                          families#update
#                          DELETE /families/:id(.:format)                          families#destroy
#


#To update the chart above, execute $annotate --routes'





Rails.application.routes.draw do

  root to: 'splash#index'

  devise_for :users
  
  resources :families do
    resources :caregivers
    resources :persons
    resources :children do
      resources :appointments
      resources :childcares
    end
  end
  
  get '/family/:id', to: 'family#show', as: :user_root_path
  
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
