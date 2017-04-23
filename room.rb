class Room

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def all_guests_in_room(room)
    return room[:guests]
  end

  def can_guest_afford_entry(entry_fee, guest_money)
    if entry_fee > guest_money
      return false
    else 
      return true
    end
  end

end