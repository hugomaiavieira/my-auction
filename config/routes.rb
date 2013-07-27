Auction::Application.routes.draw do

  root :to => 'site#index'
  get 'bids', :to => 'bids#index'
  match 'auth/facebook/callback', via: [:get, :post], :to => 'sessions#create'
  match 'auth/failure', via: [:get, :post], :to => redirect('/')
end
