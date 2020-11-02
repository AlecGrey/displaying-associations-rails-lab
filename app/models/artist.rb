class Artist < ActiveRecord::Base

    has_many :songs

    def song_count
        song_count = self.songs.size
    end
    
    def verbose_song_count
        self.song_count == 1 ? "#{self.song_count} song" : "#{self.song_count} songs"
    end
end
