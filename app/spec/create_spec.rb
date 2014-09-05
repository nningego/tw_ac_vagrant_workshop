require 'spec_helper'
describe Create do

  it 'should connect to db' do
    mysql = double(Mysql)
    expect_any_instance_of(Mysql).to receive(:connect).with('localhost', 'root', 'thought', 'minion', '3306', '/var/run/mysqld/mysqld.sock').and_return(mysql)

    expect(mysql).to receive(:prepare).and_return(mysql)
    expect(mysql).to receive(:execute)

    Create.run
  end
end