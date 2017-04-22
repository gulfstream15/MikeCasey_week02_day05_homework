require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../song' )
require_relative( '../guest' )

class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("KBar")

    @guest1 = Guest.new("Mark")
    @guest2 = Guest.new("Mike")
    @guest3 = Guest.new("Anne")
    @guest4 = Guest.new("Peter")
    @guest5 = Guest.new("Niki")

    @song = Song.new("Imagine - John Lennon")

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

    @room1 = {
      name: "Easy",
      guests: ["Jay","Keith","Adam"],
      max_guests: 4,
      songs: ["Frank Sinatra - Under My Skin", "Louis Armstrong - Wonderful World"] 
    }
    
    @room2 = {
      name: "Pop",
      guests: ["Anne","Bob"],
      max_guests: 2,
      songs: ["Abba - Waterloo", "Tom Jones - Delilah"] 
    }

    @rooms = [@room1, @room2]

  end 

  def test_get_room_name()
    result = @karaoke_bar.get_room_name(@room1)
    assert_equal("Easy", result)
  end

  def test_get_all_guests_in_room()
    result = @karaoke_bar.get_all_guests_in_room(@room2)
    assert_equal(["Anne","Bob"], result)
  end

  def test_checkin_guest()
    result = @karaoke_bar.checkin_guest(@room1, @guest1.name)
    assert_equal(["Jay","Keith","Adam","Mark"], result)
  end

  def test_checkout_guest()
    result = @karaoke_bar.checkout_guest(@room2,@guest3.name)
    assert_equal(["Bob"], result)
  end

  def test_add_song_to_room()
    result = @karaoke_bar.add_song_to_room(@room2,@song.title)
    assert_equal(["Abba - Waterloo", "Tom Jones - Delilah", "Imagine - John Lennon"], result)
  end

  def test_get_max_guest_for_room()
    result = @karaoke_bar.get_max_guest_for_room(@room1)
    assert_equal(4, result)
  end 

end

