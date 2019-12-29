require 'active_record'

ActiveRecord::Base.establish_connection(
  database: 'todo-list_db',
  adapter:  'sqlite3'
)