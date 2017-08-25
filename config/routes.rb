Rails.application.routes.draw do
  #get '/mapa' => "mapa#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index', as: 'home'
  get 'geolocation' => 'pages#geolocation', as: 'geolocation'
  get 'onde' => 'pages#where', as: 'where'
  get 'obrigado' => 'pages#thanks', as: 'thanks'
  get 'o-que-e' => 'pages#what', as: 'what'
  get 'quem-somos' => 'pages#who', as: 'who'
  # get 'resultados' => 'pages#results', as: 'results'
  get 'contato', to: 'messages#new', as: 'contact'
  post 'contato', to: 'messages#create'

  patch 'create_by_location' => 'visitas#create_by_location'
  patch 'create_by_city' => 'visitas#create_by_city'

  get 'cidades/buscar' => 'cidades#buscar'

  post 'interessados' => 'interessados#create'

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
