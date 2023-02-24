Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    collection do
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, shallow: true, only: %i[new create destroy]
  end
  # resources :reviews, only: %i[destroy]

  # get 'restaurants/top', to: 'restaurants#top'
  # get 'restaurants/:id/chef', to: 'restaurants#chef', as: chef_restaurant
end
