Rails.application.routes.draw do
  devise_for :users

  resources :pets

  authenticated do
    root :to => 'pets#index', as: :authenticated
  end
  resources :parks

  root to: "home#index"
end
