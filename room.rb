class Room

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def all_room_guests(room)
    return room[:guests]
  end

end