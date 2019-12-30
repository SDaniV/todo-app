require 'sqlite3'

begin

  db = SQLite3::Database.open "todo-list-db"

  id = 1

  stm = db.prepare "SELECT * FROM task"
  p stm

rescue SQLite3::Exception => e

  puts "Exception occurred"
  puts e

ensure
  stm.close if stm
  db.close if db
end