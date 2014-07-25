require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  tab = db.execute "COUNT * FROM #{table_name}"
end

def sorted_artists(db)
  tab = []
  tab = db.execute "SELECT name FROM artist ORDER by name DESC "
  tab.flatten
end

def love_tracks(db)
 tab = db.execute "SELECT name FROM track WHEN name '%(love)%'"
 tab.flatten
end

def long_tracks(db, min_length)
  time = min_length * 60000
  array = db.execute "SELECT name FROM track WHERE milliseconds > #{time} ORDER BY milliseconds DESC"
  array.flatten
  #TODO: return tracks verifying: duration > min_length (minutes)
end
