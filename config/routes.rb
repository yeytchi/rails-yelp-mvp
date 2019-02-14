Rails.application.routes.draw do
  root to: 'restaurants#index'
  get 'restaurants', to: 'restaurants#index'

  get 'restaurants/new', to: 'restaurants#new', as: 'new'
  post 'restaurants', to: 'restaurants#create', as: 'create'

  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'reviews'
  post 'restaurants/:id/reviews/new', to: 'reviews#create', as: 'create_review'

  # resources :restaurant, only: [:index, :show, :new, :create]
  # resources :restaurant do
  #   resources :reviews, only: [:new, :create]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
