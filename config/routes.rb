Rails.application.routes.draw do
  # BOOKMARK ROUTES
  # get 'lists/:list_id/bookmarks', to: 'bookmarks#index'
  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'
  # get 'bookmarks/:id', to: 'bookmarks#destroy'
  # # get 'bookmarks/:id', to: 'bookmarks#show', as: :bookmark

  # # LIST ROUTES
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # delete 'lists/:id', to: 'lists#destroy'
  # get 'lists/:id', to: 'lists#show', as: :list

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
