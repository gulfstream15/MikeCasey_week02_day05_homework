require( 'minitest/autorun' )
require_relative( '../guest' )

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Bob", 30)
    @guest2 = Guest.new("Mike", 40)

    @guests = [@guest1, @guest2]
  end
  
  def test_guest_name()
    assert_equal("Bob",@guest1.name)
  end

  def test_guest_money()
      assert_equal(40,@guest2.money)
  end 

end
