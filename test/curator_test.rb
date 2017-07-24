require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'
require './lib/museum'
require './lib/artist'
require './lib/photograph'

class CuratorTest < Minitest::Test
  def test_curator_exists
    curator = Curator.new
    assert_instance_of Curator, curator
  end

  def test_curator_has_no_artists
    curator = Curator.new
    assert_equal [], curator.artists
  end

  def test_curator_has_no_museums_or_photographs
    curator = Curator.new
    assert_equal [], curator.museums
    assert_equal [], curator.photographs
  end

  def test_curator_can_add_museums
    curator = Curator.new
    curator.add_museum({name: "MoMA"})
    assert_instance_of Museum, curator.museums[0]
    assert_equal 1, curator.museums.count
    assert_equal 1, curator.museums.first.id
  end

  def test_curator_can_add_artist
    curator = Curator.new
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_instance_of Artist, curator.artists[0]
    assert_equal 1, curator.artists.count
    assert_equal 1, curator.artists.first.id
  end

  def test_curator_can_add_photographs
    curator = Curator.new
    curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
    assert_instance_of Photograph, curator.photographs[0]
    assert_equal 1, curator.photographs.count
    assert_equal 1, curator.photographs.first.id
  end

  # def test_curator_can_find_museum_by_photograph
  #   curator.add_museum({name: "Metropolitan Museum of Art"})
  #   curator.add_artist({name: "Diane Arbus", born: 1923, died: 1971, country: "United States"})
  #   curator.add_photograph({name: "Identical Twins, Roselle, New Jersey", artist_id: 1, museum_id: 1, year: 1967})
  #   photograph = curator.photographs.first
  #
  #   museum = curator.find_museum_by_photograph(photograph)
  #
  #   assert_equal 1, museum.id
  #   assert_equal "Metropolitan Museum of Art", museum.name
  # end

end
