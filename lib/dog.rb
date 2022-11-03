require "active_record"

# Setup a database connection
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/dogs.sqlite"
)

# Create a dogs table
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT
  )
SQL
ActiveRecord::Base.connection.execute(sql)

# Log SQL output to the terminal
ActiveRecord::Base.logger = Logger.new(STDOUT)

class Dog < ActiveRecord::Base
end
