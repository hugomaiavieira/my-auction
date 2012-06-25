Auction::Application.routes.draw do

  root :to => 'site#index'
  get 'bids', :to => 'bids#index'
  match 'auth/facebook/callback', :to => 'sessions#create'
  match 'auth/failure', :to => redirect('/')
end
