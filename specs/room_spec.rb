require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../room' )
require_relative( '../guest' )
require_relative( '../song' )

class TestRoom < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("KBar", 20)

    @room = Room.new("Rock")

    @guest1 = Guest.new("Bob", 30)
    @guest2 = Guest.new("Joe", 50)

    @song = Song.new("Imagine - John Lennon")
  
    @room3 = {
      name: "Rock",
      guests: ["Simon","Jude","Andrew"],
      capacity: 10,
      songs: ["Bon Jovi - Livin' on a prayer", "Bruce Springsteen - Born to Run"] 
     }

     @guests = [@guest1, @guest2]
  
  end 

  def test_room_has_name()
    result = @room.name
    assert_equal("Rock",result)
  end

  def test_show_current_guests_in_room()
    result = @room.show_current_guests_in_room(@room3)
    assert_equal(["Simon","Jude","Andrew"], result)
  end

  def test_room_total_capacity()
    result = @room.room_total_capacity(@room3)
    assert_equal(10, result)
  end 
  
  def test_show_current_number_guests_in_room()
    result = @room.show_current_number_guests_in_room(@room3)
    assert_equal(3, result)
  end

  # def test_can_guests_be_added_to_room()
  #   result = @room.can_guests_be_added_to_room(@room3, @guests.size())
  #   assert_same(true, result)
  # end

  # def test_can_guests_be_added_to_room()
  #   result = @room.can_guests_be_added_to_room(@room3, @guests.size())
  #     assert_same(false, result)
  # end

  # def test_checkin_guest()
  #   result = @room.checkin_guest(@room3, @guest1.name)
  #   assert_equal(["Simon","Jude","Andrew", "Bob"], result)
  # end

  # def test_checkout_guest()
  #   result = @karaoke_bar.checkout_guest(@room3,@guest1.name)
  #   assert_equal(["Simon","Jude","Andrew"], result)
  # end


  # def test_add_song_to_room()
  #   result = @karaoke_bar.add_song_to_room(@room3@song.title)
  #   assert_equal(["Abba - Waterloo", "Tom Jones - Delilah", "Imagine - John Lennon"], result)
  # end

  


end