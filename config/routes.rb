Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :users, only: :show
  resources :posts do
    collection do
      get 'search'
    end
  end
end
