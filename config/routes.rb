Rails.application.routes.draw do
  devise_for :users

  root 'tweets#index'
  patch 'tweets/:id/edit' => 'tweets#update'
  resources :tweets do
  resources :comments, only: [:index, :create]
  end
end