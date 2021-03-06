Sue::Application.routes.draw do
  get "user/sign_up"
  post "user/sign_up_complete"
  get "user/log_in"
  post "user/log_in_complete"
	get "user/log_out_complete"

	root 'posts#intro'

	get "posts/intro"
	get "posts/per_school"
	get "posts/contact"
	get "posts/now_post"
  get "posts/after_post"
  get "posts/now_show/:id" => 'posts#now_show'
	get "posts/after_show/:id" => 'posts#after_show'
  get "posts/write_complete"
  get "posts/now_post_edit/:id" => 'posts#now_post_edit'
	get "posts/after_post_edit/:id" => 'posts#after_post_edit'
  post "posts/now_post_edit_complete"
	post "posts/after_post_edit_complete"
	get "posts/now_post_delete/:id" => 'posts#now_post_delete'
	get "posts/after_post_delete/:id" => 'posts#after_post_delete'
	post "posts/now_post_delete_complete"
	post "posts/after_post_delete_complete"
  get "posts/delete_complete"
	get "posts/write_post/:category" => 'posts#write_post'
	post "posts/write_post_complete"
	post "posts/now_comment_complete"
	post "posts/after_comment_complete"

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
