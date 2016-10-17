require 'sinatra'
require 'sinatra/base'

class DBS < Sinatra::Base
  set :port, 4000
  enable :sessions

  memory = {}

  get '/' do
    'Hello DBS!'
  end

  get '/set' do
    args = params.to_hash
    key_value(args)
    # session["input"] = args
    memory[@key] = @value
    "#{@key} = #{@value}"
  end

  # get '/return' do
  #   session["args"]
  # end

  private

  def key_value(args)
    @key = args.to_a[0][0]
    @value = args.to_a[0][1]
  end

  def session_store(args)
    session["input"] = args
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
