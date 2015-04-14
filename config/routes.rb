Rails.application.routes.draw do

  root to: "activities#index"

  resources :articles, :photos do
    resources :comments
  end
  #resources :photos
  resources :tags

end
