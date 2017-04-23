require( 'minitest/autorun' )
require_relative( '../karaoke_bar' )
require_relative( '../room' )
require_relative( '../guest' )

class TestRoom < MiniTest::Test

  def setup

    @karaoke_bar = KaraokeBar.new("KBar", 20)

    @room = Room.new("Rock")

    @guest1 = Guest.new("Bob", 30)
  
    @new_room = {
      name: "Rock",
      guests: ["Simon","Jude","Andrew"],
      capacity: 10,
      songs: ["Bon Jovi - Livin' on a prayer", "Bruce Springsteen - Born to Run"] 
     }
  
  end 

  def test_room_name()
    result = @room.name
    assert_equal("Rock",result)
  end

  def test_all_guests_in_room()
    result = @room.all_guests_in_room(@new_room)
    assert_equal(["Simon","Jude","Andrew"], result)
  end

  def test_can_guest_afford_entry()
    result = @room.can_guest_afford_entry(@karaoke_bar.entry_fee, @guest1.money)
     assert_same(true, result)
  end



end