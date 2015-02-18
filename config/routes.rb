Rails.application.routes.draw do
  get 'register/new'
  get 'autocomplete', to: 'search#autocomplete'
  root "default#index"
  resources :listing, only: [:index]
  resources :search, only: [:index]
  resources :users
  resources :offers
  resources :advertises, only: [:index, :show]
  resources :rent_types, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :cities, only: [:index, :show]
  resources :countries, only: [:index, :show]
  resources :cities do
    resources :city_districts, only: [:index, :show]
  end
end
