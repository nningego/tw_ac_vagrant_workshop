class DBClient
  attr :client

  def initialize
    @client = Mysql.connect('127.0.0.1', 'root', 'thought', 'miniondb')
  end

  def insert(name)
    stmt = @client.prepare("insert into minions(name) values ('#{name}')")
    stmt.execute
  end

  def show_all
    @client.query('select * from minions')
  end
end