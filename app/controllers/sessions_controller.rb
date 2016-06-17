class SessionsController < ApplicationController
  def create

    @auth = request.env["omniauth.auth"]["credentials"]

@auth.inspect
     Token.create(
      email:          @auth['email'],
      token:          @auth['token'],
      refresh_token:  @auth['refresh_token'],
      expires_at:     @auth['expires_at'])
  end
end