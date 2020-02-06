Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  patch '/tweets/:id/edit', to: 'tweets#update'
  resources :tweets do
    resources :comments, only: [:index, :create]
    # resources :comments
  # resource :tweets, only: [:new, :create, :show]
  end
end