class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = HTTP.headers("user-key" => "#{ENV['API_KEY']}").get("https://developers.zomato.com/api/v2.1/cities?q=new%20york").parse["location_suggestions"]

    render "index.json.jb"
  end
end
