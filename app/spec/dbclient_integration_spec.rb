require 'spec_helper'

describe DBClient do

  before do
    @client = DBClient.new
    truncate
  end

  it 'should show all minions' do
    insert_seed
    result = @client.show_all
    expect(result[0]).to include('carl')
    expect(result[1]).to include('jill')
  end

  it 'should insert minions' do

    @client.insert('carl')

    result = @client.show_all
    expect(result[0]).to include('carl')
    expect(result.count).to eq(1)

  end

  def truncate
    stmt = @client.client.prepare('truncate table minions')
    stmt.execute
    stmt.close
  end

  def insert_seed
    stmt = @client.client.prepare("insert into minions(name) values ('carl')")
    stmt.execute
    stmt = @client.client.prepare("insert into minions(name) values ('jill')")
    stmt.execute
    stmt.close
  end

end