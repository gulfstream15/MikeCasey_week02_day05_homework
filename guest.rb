class Guest

attr_accessor :name
attr_accessor :money
attr_accessor :room_choice


  def initialize(name, money, room_choice)
    @name = name
    @money = money
    @room_choice = room_choice
  end

end