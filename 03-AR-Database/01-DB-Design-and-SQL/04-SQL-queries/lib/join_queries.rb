require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)




def detailed_tracks(db)
  sql_query = "SELECT Track.Name, Album.Title, Artist.Name
             FROM Track
             JOIN Album on Album.Id = Album.AlbumId
             JOIN Artist ON Album.Artist.Id = Artist.ArtistId
             LIMIT 10
"
            detailed_tacks = detailed_tracks(db)
            detailed_tracks.each_with_index do |track, index|
            track_name = track(0)
            album_title = track(1)
            artist_name = track(2)
            puts "#{index+1} #{track_name} #{album_title} #{artist_name}"


  # TODO: return the list of tracks with their album and artist
end

def stats_on(db, category)
  sql_query = "SELECT Genre.Name AVG(Track.Milliseconds) / 60000 as avg
               FROM Track
               JOIN Genre ON Track.GenreId = Genre.GenreId
               GROUP BY Genre.Name
               ORDER BY avg

  "
  rows=db.execute(sql_query)
  stats = {}
  rows.each do |row|
   genre = row[0]
   track =
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
end