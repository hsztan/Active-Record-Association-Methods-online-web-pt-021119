class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Song.all.first.genre
  end

  def song_count
    Song.all.select {|s| s.artist.name = self.name}.count
  end

  def genre_count
    self.genres.count
  end
end
