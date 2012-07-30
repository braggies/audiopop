class UsersController < ApplicationController
  def facebook
    omniauth_info = request.env.fetch('omniauth.auth').fetch('info')
    user = User.facebook_auth(omniauth_info)
    sign_in(user)
    redirect_to root_path
  end

  def failure
    raise 'not implemented'
  end
end
