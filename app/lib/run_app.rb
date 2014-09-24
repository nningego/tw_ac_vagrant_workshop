# Load Paths
lib_path = File.expand_path('../', __FILE__)
($:.unshift lib_path) unless ($:.include? lib_path)

require 'sinatra'
require 'dbclient'
require 'json'
# Listen on all interfaces in the development environment
set :bind, '0.0.0.0'

before do
  content_type :json
end

get '/' do
  'Hello Minions !'
end

get '/show/minions' do
  @client = DBClient.new

  all = @client.show_all
  all.to_json
end

post '/minion/:name' do
  name = params[:name]
  @client = DBClient.new
  @client.insert(name)
  "inserted #{name}"
end

delete '/minion/:name' do
  name = params[:name]
  @client = DBClient.new
  @client.delete(name)
  "deleted #{name}"
end