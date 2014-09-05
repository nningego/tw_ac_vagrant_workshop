require 'spec_helper'

describe DBClient do

  before do
    @client = DBClient.new
  end

  it 'should show all minions' do
    p @client.show_all
  end

  it 'should insert minions' do

    @client.insert('carl')

    result = @client.show_all
    result.count

  end

end