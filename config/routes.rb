MyAuction::Application.routes.draw do
  get 'admin', to: 'bids#index'

  get 'auth/facebook/callback', to: 'sessions#create'

  root to: 'site#index'
end
