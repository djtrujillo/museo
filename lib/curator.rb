class Curator
  attr_reader :artists,
              :museums,
              :photographs
  def initialize
    @artists = []
    @museums = []
    @photographs = []
    @museum_id_count = 0
    @artist_id_count = 0
    @photo_id_count = 0
  end

  def add_museum(museum)
    @museum_id_count += 1
    museum[:id] = @museum_id_count
    @museums << Museum.new(museum)
  end

  def add_artist(artist)
    @artist_id_count += 1
    artist[:id] = @artist_id_count
    @artists << Artist.new(artist)
  end

  def add_photograph(photo)
    @photo_id_count += 1
    photo[:id] = @photo_id_count
    @photographs << Photograph.new(photo)
  end

  # def find_museum_by_photograph(photo)
  #
  #
  # end
end
