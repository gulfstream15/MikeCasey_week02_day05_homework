require( 'minitest/autorun' )
require_relative( '../song' )

class TestSong < MiniTest::Test
  
  def test_song_has_title
    song = Song.new("Imagine - John Lennon")
    assert_equal("Imagine - John Lennon",song.title)
  end

end