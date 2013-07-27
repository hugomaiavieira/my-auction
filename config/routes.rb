Auction::Application.routes.draw do
  get 'admin', to: 'bids#index'
  match 'auth/facebook/callback', via: [:get, :post], to: 'sessions#create'
  match 'auth/failure', via: [:get, :post], to: redirect('/')
  root to: 'site#index'
end
