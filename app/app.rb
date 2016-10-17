require 'sinatra'
require 'sinatra/base'

class DBS < Sinatra::Base
  set :port, 4000

  get '/' do
    'Hello DBS!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
