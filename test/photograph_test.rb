require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  def test_photograph_exists
    photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_instance_of Photograph, photograph
  end

  def test_photograph_has_id
    photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 1, photograph.id
  end

  def test_has_artist_id
    photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 4, photograph.artist_id
  end

  def test_has_museum_id
    photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal 2, photograph.museum_id
  end

  def test_has_name_and_year
    photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)", artist_id: 4, museum_id: 2, year: 1954})

    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
    assert_equal 1954, photograph.year
  end


end
