Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :users, only: :show
  resources :posts, only: [:index, :new, :create, :show ]
end
