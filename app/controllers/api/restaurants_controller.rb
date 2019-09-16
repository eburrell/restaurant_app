class Api::RestaurantsController < ApplicationController

  def index
    @restaurants = HTTP.headers("user-key" => "d1abcedc517fd4f375d07c93fbebab73").get("https://developers.zomato.com/api/v2.1/cities?q=new%20york").parse["location_suggestions"]

    render "index.json.jb"
  end
end
