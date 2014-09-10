require 'spec_helper'

describe DBClient do

  before do
    @client = DBClient.new
    delete('carl')
    delete('jill')
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
    expect(result.count).to eq(1)

  end

  def delete(name)
    stmt = @client.client.prepare("delete from minions where name='#{name}'")
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