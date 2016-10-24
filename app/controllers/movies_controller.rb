require 'httparty'
require 'pry'
class MoviesController < ApplicationController
  def index
    response = HTTParty.get("https://api.themoviedb.org/3/discover/movie?api_key=6f40eadd5aee54bd20363edc6206ef54&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=true&page=1000&vote_average.gte=7")
    movie = response["results"].sample
      @title = movie["original_title"]
      @poster = "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}"
      @rating = movie["vote_average"]
      @synopsis = movie["overview"]
    end
  end

# https://api.themoviedb.org/3/movie/#{random_number}?api_key=6f40eadd5aee54bd20363edc6206ef54&language=en-US
