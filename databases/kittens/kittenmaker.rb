#require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("kittens.db")
#display database as a hash
db.results_as_hash = true
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)

def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

50.times do
  create_kitten(db, Faker::Name.name, 0)
end

#Object relational matter
#kittens = db.execute ("SELECT * FROM kittens")
#kittens.each{|kitten| puts "#{kitten[1]} is #{kitten['age']}"} 

