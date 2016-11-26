class MapController < ApplicationController
  def map
  end

  def create
    require 'uri'
    require 'json'

    #puts params[:movie_info]
    @decoded_uri = URI.unescape(params[:movie_info])
    #puts decoded_uri
    @parsed_json = JSON.parse(@decoded_uri)
    #puts parsed_json

    @title = @parsed_json['title']
    #puts @title

    @latitude = params[:latitude]
    @longitude = params[:longitude]

    @showtimes = @parsed_json['showtimes']
    @description = @parsed_json['longDescription']
    @genres = @parsed_json['genres']
    @cast = @parsed_json['topCast']
    @director = @parsed_json['directors']
    @rating = @parsed_json['ratings'][0]['code']
    @year = @parsed_json['releaseYear']
    @runtime = @parsed_json['runTime']

    render "map"
  end


end
