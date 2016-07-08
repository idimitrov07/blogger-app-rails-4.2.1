Rails.application.routes.draw do

  root to: "activities#index"

  resources :articles, :photos do
    resources :comments
  end
  #resources :photos
  resources :tags

  resources :authors
  resources :author_sessions, only: [:new, :create, :destroy]
  get 'login', to: 'author_sessions#new'
  get 'logout', to: 'author_sessions#destroy'

end
