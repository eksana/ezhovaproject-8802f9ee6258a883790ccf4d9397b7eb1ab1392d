Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/new'

  resources :genres
  resources :platters

  root to: 'works#index'
  get '/works/(:id)' => 'works#select_images'

  resources :images
  resources :themes
  resources :values

  get 'main/index'

  get 'main/help'

  get 'main/about'

  get 'main/contacts'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
