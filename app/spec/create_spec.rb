require 'spec_helper'
describe Create do

  it 'should connect to db' do
    expect_any_instance_of(Mysql).to receive(:connect).with('localhost', 'root', 'thought', 'minion', '3306', '/var/run/mysqld/mysqld.sock').and_return('connected')

    Create.run
  end
end