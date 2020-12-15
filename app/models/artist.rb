class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        Song.all.count {|s|s.artist_id == self}
    end
end
