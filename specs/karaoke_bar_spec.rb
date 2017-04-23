require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../song' )
require_relative( '../guest' )
require_relative( '../room' )

class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("KBar", 20)

    @guest1 = Guest.new("Mark", 30, "Rock")
    @guest2 = Guest.new("Mike", 40, "Pop")
    @guest3 = Guest.new("Anne", 20, "Easy")
    @guest4 = Guest.new("Peter", 15, "Rock")
    @guest5 = Guest.new("Niki", 25, "Easy")

    @song = Song.new("Imagine - John Lennon")

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

    @new_room = Room.new("Rock")

    @room1 = {
      name: "Easy",
      guests: ["Jay","Keith","Adam"],
      capacity: 4,
      songs: ["Frank Sinatra - Under My Skin", "Louis Armstrong - Wonderful World"] 
    }
    
    @room2 = {
      name: "Pop",
      guests: ["Anne","Bob"],
      capacity: 9,
      songs: ["Abba - Waterloo", "Tom Jones - Delilah"] 
    }

    @rooms = [@room1, @room2]

  end 

  def test_bar_has_name()
    result = @karaoke_bar.bar_has_name()
    assert_equal("KBar", result)
  end

  def test_bar_has_entry_fee()
    result = @karaoke_bar.bar_has_entry_fee()
    assert_equal(20, result)
  end

  def test_can_guest_afford_entry()
    result = @karaoke_bar.can_guest_afford_entry(@guest4.money)
     assert_same(false, result)
  end

  def test_can_guest_afford_entry()
    result = @karaoke_bar.can_guest_afford_entry(@guest1.money)
     assert_same(true, result)
  end

end

