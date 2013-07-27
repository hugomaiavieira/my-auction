MyAuction::Application.routes.draw do
  get 'admin', to: 'bids#index'

  scope 'auth' do
    get '/facebook/callback', to: 'sessions#create'
    get '/failure', to: redirect('/')
  end

  root to: 'site#index'
end
