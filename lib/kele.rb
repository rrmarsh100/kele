
require 'httparty'
require 'json'

class Kele
  include HTTParty

  base_uri 'https://www.bloc.io/api/v1'

  def initialize(email, password)
    response = self.class.post('/sessions', body: { email: email, password: password })
    raise 'Invalid email or password. Authentication failed.' if response.code == 404
    @auth_token = response['auth_token']
  end


  def get_me
    response = self.class.get("/users/me", headers: { "authorization" => @auth_token })
		@user = JSON.parse(response.body)
	end