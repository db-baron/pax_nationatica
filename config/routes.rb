Rails.application.routes.draw do

    root "users#new"
    get "/" => "users#new" # The same thing as root

    post "/register" => "users#register"

    get "users/new" => "users#new"
    get "/index" => "messages#index"


    get "/logout" => "users#logout"
    post "/login" => "users#login"

    get "messages" => "messages#index"
    post "messages" => "messages#create"

    get "/about_path" => "application#about"
    get "/faq_path" => "application#faq"
    get "/contact_path" => "application#contact"

    get "/nations" => "nations#index"

    get "/dropdown_search" => "nations#dropdown_search"
    get "/:nation_name" => "nations#show_nation"

    # get "/get_nation" => "nations#nationview"

    # get '/nationlookup/:continent_id' => '/nationlookup/:nation'


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
