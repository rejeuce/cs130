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
    @recommend = params[:recommend]
    @movieImage = params[:movie_image]

    @showtimes = @parsed_json['showtimes']
    @description = @parsed_json['longDescription']
    @genres = @parsed_json['genres']
    @cast = @parsed_json['topCast']
    @director = @parsed_json['directors']
    @rating = @parsed_json['ratings'][0]['code']
    @year = @parsed_json['releaseYear']
    @runtime = @parsed_json['runTime']

    @displayTime = @runtime.gsub('PT','')
    @displayTime = @displayTime.gsub('H', ' hour ')
    @displayTime = @displayTime.gsub('M', ' minutes')

    render "map"
  end


end
