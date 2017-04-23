class Room

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def all_guests_in_room(room)
    return room[:guests]
  end

end