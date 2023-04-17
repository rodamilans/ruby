require 'sinatra'
configure { set :server, :puma }
configure { set :bind, '0.0.0.0' } # external access


get '/' do
  "Hello World!"
end