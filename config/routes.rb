Rails.application.routes.draw do
  root 'tweets#index'
  resource :tweets, only: [:new]
end
