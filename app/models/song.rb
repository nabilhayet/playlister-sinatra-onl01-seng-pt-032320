class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def find_by_slug
    @song = Song.find_by_id(value)
  end

  def slug
    name = self.name
    name.map do |value|
      if value == " "
        value = "-"
        binding.pry
      end
    value
 end

end
end
