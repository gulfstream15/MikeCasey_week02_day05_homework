require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../song' )
require_relative( '../guest' )

class TestKaraokeBar < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("KBar", 20)

    @guest1 = Guest.new("Mark", 30)
    @guest2 = Guest.new("Mike", 40)
    @guest3 = Guest.new("Anne", 20)
    @guest4 = Guest.new("Peter", 15)
    @guest5 = Guest.new("Niki", 25)

    @song = Song.new("Imagine - John Lennon")

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

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
    result = @karaoke_bar.get_room_capacity(@room1)
    assert_equal(4, result)
  end 
 
  def test_get_total_guests_in_room()
    result = @karaoke_bar.get_total_guests_in_room(@room1)
    assert_equal(3, result)
  end

  def test_guest_added_to_room()
    result = @karaoke_bar.guest_added_to_room(@room2, @guests.size())
    assert_same(true, result)
  end

  def test_guest_added_to_room()
    result = @karaoke_bar.guest_added_to_room(@room1, @guests.size())
    assert_same(false, result)
  end
  
  def test_can_guest_afford_entry()
    result = @karaoke_bar.can_guest_afford_entry(@guest1.money)
     assert_same(true, result)
  end

  def test_can_guest_afford_entry()
    result = @karaoke_bar.can_guest_afford_entry(@guest4.money)
     assert_same(false, result)
  end

end

