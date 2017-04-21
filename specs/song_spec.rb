require( 'minitest/autorun' )
require_relative( '../song' )

class TestSong < MiniTest::Test
  
  def setup
    @title1 = Song.new("Imagine - John Lennon")
  end

  def test_get_song_title
    assert_equal("Imagine - John Lennon",@title1.title)
  end

end