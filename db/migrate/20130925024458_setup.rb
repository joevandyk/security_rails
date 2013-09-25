class Setup < ActiveRecord::Migration
  def up
    execute "create table foos (foos integer primary key, name text not null)"
    execute "insert into foos values (1, 'Joe'), (2, 'Bob')"
  end

  def down
  end
end
