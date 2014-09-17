require 'mysql'

class DBClient
  attr :client

  def initialize
    @client = Mysql.connect('127.0.0.1', 'root', 'thought', 'miniondb')
  end

  def insert(name)
    stmt = @client.prepare("insert into minions(name) values ('#{name}')")
    stmt.execute
    stmt.close
  end

  def delete(name)
    stmt = @client.prepare("delete from minions where name='#{name}'")
    stmt.execute
    stmt.close
  end

  def show_all
    stmt = @client.prepare('select * from minions order by name')
    stmt.execute
    result = fetch_results(stmt)
    stmt.close
    result
  end

  def fetch_results(stmt)
    rows = []
    while row = stmt.fetch do
      rows << row
    end
    rows
  end
end