Rails.application.routes.draw do
  get 'movie/index'

  get 'movie/list'

  get 'food/index'

  get 'food/list'

  get 'animal/index'
  get 'animal/list'

  get 'myboard/index'
  get 'myboard/list'

  root 'myboard#list'
  get 'bucketlist/index'
  get 'bucketlist/list'

  post 'bucketlist/write' => 'bucketlist#write'
  post 'myboard/write' => 'myboard#write'
  post 'animal/write' => 'animal#write'
  post 'food/write' => 'food#write'  
  post 'movie/write' => 'movie#write'
  
  get  'bucketlist/destroy/:id' => 'bucketlist#destroy'
  get  'bucketlist/update_view/:id' => 'bucketlist#update_view'
  post 'bucketlist/update/:id' => 'bucketlist#update'
  
  get  'myboard/destroy/:id' => 'myboard#destroy'
  get  'myboard/update_view/:id' => 'myboard#update_view'
  post 'myboard/update/:id' => 'myboard#update'  
  
  get  'animal/destroy/:id' => 'animal#destroy'
  get  'animal/update_view/:id' => 'animal#update_view'
  post 'animal/update/:id' => 'animal#update'    
  
  get  'food/destroy/:id' => 'food#destroy'
  get  'food/update_view/:id' => 'food#update_view'
  post 'food/update/:id' => 'food#update'    
  
  get  'movie/destroy/:id' => 'movie#destroy'
  get  'movie/update_view/:id' => 'movie#update_view'
  post 'movie/update/:id' => 'movie#update'      
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
