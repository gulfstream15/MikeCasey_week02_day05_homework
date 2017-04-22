class Guest

attr_accessor :name
attr_accessor :money

  def initialize(name, money)
    @name = name
    @money = money
  end

  def get_guest_name()
    return @name
  end

end