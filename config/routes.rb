Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
  # resource :tweets, only: [:new, :create, :show]
  end
end
