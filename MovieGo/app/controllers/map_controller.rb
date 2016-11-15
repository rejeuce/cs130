class MapController < ApplicationController
  def map
  end

  def create
    require 'uri'
    require 'json'

    puts params[:movie_info]
    decoded_uri = URI.unescape(params[:movie_info])
    puts decoded_uri
    parsed_json = JSON.parse(decoded_uri)
    puts parsed_json

    @title = parsed_json['title']
    puts @title

    render "map"
  end


end
