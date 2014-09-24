require 'mysql'
module Create
  def self.run
    my = Mysql.connect('127.0.0.1', 'root', 'thought', 'miniondb')

    my.query('CREATE TABLE IF NOT EXISTS minions(id int AUTO_INCREMENT, name varchar(40), PRIMARY KEY (id))')

    p 'TABLE minions CREATED !'
  end

end