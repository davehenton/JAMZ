class WelcomeController < ApplicationController

  def index
  end

  def landing
  	code = params[:code]
	token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: code, redirect_uri: "http://localhost:3000/welcome/landing" }, header: { authorization: "code" })
	token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: code, redirect_uri: "http://localhost:3000/welcome/landing" }, header: { authorization: "code" })
	token = token_response["access_token"]
	state_query = HTTParty.get("https://api.spotify.com/v1/search?q=california&type=track", headers: { "Authorization" => "Bearer " + token })
	@results = state_query["tracks"]["items"]

  end
end
