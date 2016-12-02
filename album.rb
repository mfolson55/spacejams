class Album
  def initialize(album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def id
    @album_id
  end

  def title
    @album_name
  end

  def artists
    @artists
  end

  def tracks
    @tracks
  end

  def duration_min
    total_length = 0
    @tracks.each do |track|
      total_length += track[:duration_ms].to_f
    end
    total_length = (total_length / (60000)).to_f.round(2)
  end

  def track_list
    track_list = ""
    @tracks.each do |track|
      track_list << " - #{track[:title]}\n"
    end
    track_list
  end

  def summary
    "Name: #{title}\nArtist(s): #{artists}\nDuration (min.): #{duration_min}\nTracks:\n#{track_list}\n"
  end
end
