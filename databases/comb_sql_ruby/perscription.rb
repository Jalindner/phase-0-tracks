require 'sqlite3'

#create a program that creates a database to track perscriptions of relatives
#if tables do not exist, create them
  #people
    #id INT PRIMARY KEY
    #name VARCHAR(255)
    #months_on_perscription INT
  #perscriptions
    #id INT PRIMARY KEY
    #months_required INTEGER
    #dosage VARCHAR(255)
    #person_id INT FOREIGN KEY REFRECNCES people.id
    #medicine_id INT FOREIGN KEY REFRENCES medicine.id
  #medicines
    #id INT PRIMARY KEY
    #name VARCHAR(255)
    #usage VARCHAR(255)
#allow user to remove, update, and add people, percriptions, and medicine

#remove methods take a database and a string as an arguement
#DELETE FROM appropriate table where string == table's name value
def remove_person(db, name)
  db.execute("DELETE FROM people WHERE name = ?", [name]) 
end

#same as remove_person
#uses foreign key to identify appropriate perscription
def remove_perscription(db, name)

end

#add methods take a database and a string as an arguement
#INSERT INTO appropriate table with defined values
def add_person(db, name)
  db.execute("INSERT INTO people(name, months_on_perscription) VALUES(?, 0)", [name])
  #months_on_perscription is defaulted to 0
end

def add_perscription(db, p_name, dose_info, m_name, months)
  #create 2 integer variables assinged with the primary keys 
  #of medicines and people tables
  per_var = db.execute("SELECT id FROM people WHERE name=?",[p_name])
  med_var = db.execute("SELECT id FROM medicines WHERE name=?"[m_name])
  p_var = per_var[0][0]
  m_var = med_var[0][0]
  #create_perscription_cmd = <<-SQL
  # INSERT INTO perscriptions(months_required, dosage, person_id, medicine_id)
  # VALUES(?,?,?,?)
  #SQL
  db.execute("INSERT INTO perscriptions(months_required, dosage, person_id, medicine_id) VALUES(?,?,?,?)",[months, dose_info, 1, 1])
end

def add_medicine(db, name, usage)
  db.execute("INSERT INTO medicines(name, usage) VALUES(?, ?)", [name, usage])
end

def update_person(db, name, months)

end

def update_perscription(db, name)

end

db = SQLite3::Database.new("med_manage.db")

create_people = <<-SQL
  CREATE TABLE IF NOT EXISTS people(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    months_on_perscription INT
  )
SQL

create_perscriptions = <<-SQL
  CREATE TABLE IF NOT EXISTS perscriptions(
    id INTEGER PRIMARY KEY,
    months_required INT,
    dosage VARCHAR(255),
    person_id INT,
    medicine_id INT,
    FOREIGN KEY (person_id) REFERENCES people(id)
    FOREIGN KEY (medicine_id) REFERENCES medicines(id)
  )
SQL

create_medicines = <<-SQL
  CREATE TABLE IF NOT EXISTS medicines(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    usage VARCHAR(255)
  )
SQL
db.execute(create_people)
#add_person(db, "Jerry")
db.execute(create_medicines)
db.execute(create_perscriptions)
#add_medicine(db, "Relpax", "releive migrane symptoms")
add_perscription(db, "Jerry", "once every 24 hours", "Relpax", 5)
