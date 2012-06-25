class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice('uid')).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.uid = ['uid']
      user.name = ['info']['name']
      user.email = ['info']['email']
      user.link = ['info']['urls']['Facebook']
    end
  end
end
