Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resource :tweets, only: [:new, :create]
end
