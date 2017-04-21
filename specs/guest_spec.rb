require( 'minitest/autorun' )
require_relative( '../guest' )

class TestGuest < MiniTest::Test
  
  def test_guest_has_name
    guest = Guest.new("Bob")
    assert_equal("Bob",guest.name)
  end

end
