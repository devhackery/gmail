class GoogleController < ApplicationController
  def connect
  	@last_token = Token.last
     
  end
end
