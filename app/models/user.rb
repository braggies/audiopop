class User < ActiveRecord::Base
  devise :omniauthable

  validates_presence_of :name, :first_name, :last_name

  def self.facebook_auth(omniauth_info)
    User.where(email: omniauth_info['email']).first_or_create! do |user|
      user.first_name = omniauth_info['first_name']
      user.last_name = omniauth_info['last_name']
      user.name = omniauth_info['name']
    end
  end
end
