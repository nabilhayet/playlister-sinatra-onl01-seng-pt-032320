class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def find_by_slug
    @song = Song.find_by_id(value)
  end

  def slug
    name = self.name
    for (int i = 0; i < name.length(); ++i) {
        if (name[i] == ' ') {

            name[i] = '-';
        }
    }
  end

end
