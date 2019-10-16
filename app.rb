require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Hello, this is the index!"
  end

  run! if app_file == $0
end
