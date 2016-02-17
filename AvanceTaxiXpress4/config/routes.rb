Rails.application.routes.draw do
  resources :profiles
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :servicios
  resources :clientes
  resources :precios
  resources :distrito_destinos
  resources :distrito_origens
  resources :profiles, only: [:edit, :update]
  get 'conductor/chofer1'

  get 'panel/servicios'

  get 'panel/usuarios'

  get 'panel/reportes'

  #get 'panel/admin'

  get 'dashboard/home'

  get 'dashboard/bookonline'

  get 'dashboard/myrides'

  get 'dashboard/myaccount'
  
  get 'dashboard/contacto'
  
  root 'dashboard#home'
  get 'admin', controller: :panel, action: :admin, alias: 'admin'
  get 'admin/servicios', controller: :panel, action: :servicios, alias: 'servicios'
  get 'admin/usuarios', controller: :panel, action: :usuarios, alias: 'usuarios'
  get 'admin/reportes', controller: :panel, action: :reportes, alias: 'reportes'
  get 'conductor', controller: :conductor, action: :chofer1, alias: 'chofer1'
  get 'contacto', controller: :dashboard, action: :contacto, alias: 'contacto'


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