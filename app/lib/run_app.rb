require 'sinatra'
require 'dbclient'
# Listen on all interfaces in the development environment
set :bind, '0.0.0.0'

class MinionApp
  @client = DBClient.client

  get '/' do
    'Hello World!'
  end

  get '/show/minions' do
    results = @client.query('SELECT * FROM minions ORDER BY name')
    p results
  end
end
