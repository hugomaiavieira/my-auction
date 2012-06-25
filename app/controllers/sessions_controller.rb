class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id

    Bid.create!(:user_id => user.id)

    redirect_to root_url, :notice => "#{user.name}, obrigado pelo seu lance!"
  end
end