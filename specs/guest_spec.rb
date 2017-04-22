require( 'minitest/autorun' )
require_relative( '../guest' )

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Bob")
    @guest2 = Guest.new("Mike")

    @guests = [@guest1, @guest2]
  end
  
  def test_get_guest_name()
    assert_equal("Bob",@guest1.name)
  end

end
