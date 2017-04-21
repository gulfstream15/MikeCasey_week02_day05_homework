require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../song' )

class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("KBar")

    @room1 = {
      name: "Easy",
      guests: ["Jay","Keith"],
      songs: ["Frank Sinatra - My Way", "Louis Armstrong - Wonderful World"] 
    }
    
    @room2 = {
      name: "Pop",
      guests: ["Anne","Bob"],
      songs: ["Abba - Waterloo", "Tom Jones - Delilah"] 
    }

    @rooms = [@room1, @room2]

  end 

  def test_get_room_name
    result = @karaoke_bar.get_room_name(@room1)
    assert_equal("Easy", result)
  end

  def test_get_all_guests_in_room
    result = @karaoke_bar.get_all_guests_in_room(@room2)
    assert_equal(["Anne","Bob"], result)
  end

  def test_checkin_guest
    guest = Guest.new("Bob")
    result = @karaoke_bar.checkin_guest(@room1, guest.name)
    assert_equal(["Jay","Keith","Bob"], result)
  end

  def test_checkout_guest
    result = @karaoke_bar.checkout_guest(@room2)
    assert_equal(["Bob"], result)
  end

  def test_add_song_to_room
    song = Song.new("Imagine - John Lennon")
    result = @karaoke_bar.add_song_to_room(@room2,song.title)
    assert_equal(["Abba - Waterloo", "Tom Jones - Delilah", "Imagine - John Lennon"], result)
  end 

end

