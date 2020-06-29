class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def find_by_slug(value)
    @song = Song.find_by_id(value)
    
  end

  def slug(song)
    @updated =
  end

end
