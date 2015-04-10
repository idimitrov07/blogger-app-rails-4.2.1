Rails.application.routes.draw do

  root to: "articles#index"

  resources :articles, :photos do
    resources :comments
  end
  #resources :photos
  resources :tags

end
