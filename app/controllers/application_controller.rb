class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |user_name, password|
        user_name == 'admin' && password == ENV['ADMIN_PASSWORD']
      end
    end
  end
end