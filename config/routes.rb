Tea::Application.routes.draw do  
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"
  get "check" => "bulletins#check_login", :as => "check"

  #get "bulletins" => "bulletins"
  # match "*path" => "pages#404"
  #root :to => "users#new"
  root :to => 'bulletins#welcome'
  resources :bulletins
  resources :users
  resources :sessions

  #resources :courses

  get "bulletins" => "bulletins"
  get "courses/s11" => "courses#s11"
  get "courses/s12" => "courses#s12"
  get "courses/s21" => "courses#s21"
  get "courses/s22" => "courses#s22"
  get "courses/s23" => "courses#s23"
  get "courses/s24" => "courses#s24"
  get "courses/s31" => "courses#s31"
  get "courses/s32" => "courses#s32"
  get "courses/s33" => "courses#s33"
  get "courses/s34" => "courses#s34"
  get "courses/s35" => "courses#s35"
  get "courses/s36" => "courses#s36"
  get "courses/s37" => "courses#s37"
  get "courses/s4" => "courses#s4"
 


  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
