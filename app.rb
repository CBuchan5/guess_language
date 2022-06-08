require 'sinatra/base'
require 'sinatra/reloader'
require 'httparty'

class Guesslanguage < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  response = HTTParty.get('https://api.github.com/users/CBuchan5/repos')
  puts response.parsed_response if response.code == 200
  get '/response' do
    @languages_used = [].reject(&:blank?)
    response.each do |array|
      language = array['language']
      @languages_used << language
    end
    @languages_used.compact.sample
  end

  # iterate over the JSON data to retrive the "language, Ruby" and then get the Ruby
  # Test to see if it code works by using .sample first and by using my own repositry
  # wanting to go and then amend so that when a username was added it would pull up that repo instead. 
  # add this to an array to then count how many of each language there are
  # Do the same for other languages
  # If the number for a certain language is higher than another - return it
  run! if app_file == $0
end
