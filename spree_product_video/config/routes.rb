Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :products do
      member do
        get :clone
      end

      resources :product_properties

      resources :images

      resources :videos

      resources :variants

      resources :option_types do
        member do
          get :select
          get :remove
        end
        collection do
          get :available
          get :selected
        end
      end

      resources :taxons do
        member do
          post :select
          post :remove
        end
        collection do
          post :available
          get :selected
        end
      end
    end
  end
end