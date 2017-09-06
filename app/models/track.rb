class Track < ApplicationRecord

  validates :artist_name, :song_title, :album_title, presence: true

  after_create :save_to_playlist_file

  private

  def save_to_playlist_file
    totals = File.open("songinfo.txt", 'w')
    totals.puts "#{artist_name} #{song_title} #{album_title}"
    totals.close
  end
end
