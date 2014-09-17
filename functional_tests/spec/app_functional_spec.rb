require_relative 'spec_helper'

describe 'app' do
  it 'should show saved minions' do
    HTTParty.post('http://localhost:4567/minion/carl')

    response = HTTParty.get('http://localhost:4567/show/minions')
    expect(response.parsed_response[0]).to include('carl')

    HTTParty.delete('http://localhost:4567/minion/carl')

  end
end
