require( 'minitest/autorun' )
require_relative( '../room' )

class TestRoom < MiniTest::Test

  def setup

    @room = Room.new("Rock")
  
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
    result = @room.all_room_guests(@new_room)
    assert_equal(["Simon","Jude","Andrew"], result)
  end

end