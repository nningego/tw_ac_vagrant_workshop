# Load Paths
lib_path = File.expand_path('../', __FILE__)
($:.unshift lib_path) unless ($:.include? lib_path)

require 'sinatra'
require 'dbclient'
# Listen on all interfaces in the development environment
set :bind, '0.0.0.0'


get '/' do
  'Hello World!'
end

get '/show/minions' do
  @client = DBClient.new
  @client.show_all
end

post '/minion/:name' do
  name = params[:name]
  @client = DBClient.new
  @client.insert(name)
  p "inserted #{name}"
end