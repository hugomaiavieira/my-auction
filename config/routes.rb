MyAuction::Application.routes.draw do
  scope 'admin' do
    get '/', to: redirect('/admin/bids')
    resources :bids, only: [:index, :destroy]
  end

  get 'auth/facebook/callback', to: 'sessions#create'

  root to: 'site#index'
end
