class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist
      artist.name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end