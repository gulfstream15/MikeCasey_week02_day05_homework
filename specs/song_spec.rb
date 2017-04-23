require( 'minitest/autorun' )
require_relative( '../song' )

class TestSong < MiniTest::Test
  
  def setup
    @title1 = Song.new("Queen - Bohemiam Rapsody")
  end

  def test_get_song_title()
    assert_equal("Queen - Bohemiam Rapsody",@title1.title)
  end

end