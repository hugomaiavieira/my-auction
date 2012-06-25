Auction::Application.routes.draw do

  root :to => 'site#index'
  match 'auth/facebook/callback', :to => 'session#create'
  match 'auth/failure', :to => redirect('/')
end
