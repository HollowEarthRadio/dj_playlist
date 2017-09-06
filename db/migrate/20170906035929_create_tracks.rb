class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :artist_name
      t.string :song_title
      t.string :album_title
      t.timestamps
    end
  end
end
