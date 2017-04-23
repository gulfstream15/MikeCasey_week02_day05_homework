require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../song' )
require_relative( '../guest' )
require_relative( '../room' )

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

  def test_club_has_name()
    result = @karaoke_bar.club_has_name()
    assert_equal("KBar", result)
  end

  def test_club_has_entry_fee()
    result = @karaoke_bar.club_has_entry_fee()
    assert_equal(20, result)
  end

  def test_room_has_name()
    result = @karaoke_bar.room_has_name(@room1)
    assert_equal("Easy", result)
  end  

  def test_check_guest_has_any_money
    result = @karaoke_bar.check_guest_has_any_money(@guest1.money)
    assert_equal(true, result)
  end

  def test_checkin_guest()
    result = @karaoke_bar.checkin_guest(@room1, @guest1.name)
    assert_equal(["Jay","Keith","Adam","Mark"], result)
  end

  def test_all_guests_in_room()
    result = @karaoke_bar.all_guests_in_room(@room2)
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

  def test_room_capacity()
    result = @karaoke_bar.room_capacity(@room1)
    assert_equal(4, result)
  end 
 
  def test_total_guests_in_room()
    result = @karaoke_bar.total_guests_in_room(@room1)
    assert_equal(3, result)
  end

  def test_can_guest_be_added_to_room()
    result = @karaoke_bar.can_guest_be_added_to_room(@room2, @guests.size())
    assert_same(true, result)
  end

  def test_can_guest_be_added_to_room()
    result = @karaoke_bar.can_guest_be_added_to_room(@room1, @guests.size())
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

