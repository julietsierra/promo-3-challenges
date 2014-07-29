require 'sqlite3'


def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{ CREATE TABLE IF NOT EXISTS posts
   (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name VARCHAR (100),
    source_url VARCHAR (300),
    date DATETIME,
    rating INT
  )
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)
  db.execute("INSERT INTO posts (name,rating,source_url,date)
  VALUES ('#{post[:name]}',#{post[:rating]},'#{post[:source_url]}','#{post[:date]}')")

end

def get_posts(db)
stm = db.execute "SELECT * FROM posts"
stm.flatten

end

def get_post(db, id)
 puts db.execute "SELECT * FROM posts WHERE id = #{id}"

  #TODO: get a specific post
end

def update_post(db, id, name)
puts db.execute "UPDATE post SET name = 'name' WHERE id = id"
	#TODO: update a post's name in your db
end

def delete_posts(db)
 db.execute "DELETE FROM posts"
end

def delete_post(db, id)
  db.execute "DELETE FROM post WHERE id = #{id}"
end