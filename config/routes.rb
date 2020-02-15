Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions' 
    }
    # devise_scope :user do
    #   get 'users/sign_in' => 'users/sessions#new'
    # end
    # resources :users, :only => [:sign_in]
  
  root 'tweets#index'
  patch '/tweets/:id/edit', to: 'tweets#update'
  resources :tweets do
    resources :comments, only: [:index, :create]
    # resources :comments
  # resource :tweets, only: [:new, :create, :show]
  end
end