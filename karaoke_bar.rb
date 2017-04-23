class KaraokeBar

  attr_accessor :name
  attr_accessor :entry_fee

  def initialize(name, entry_fee)
    @name = name
    @entry_fee = entry_fee
  end

  def bar_has_name() 
    return @name
  end 

  def bar_has_entry_fee() 
    return @entry_fee
  end 

  def room_has_name(room)
    return room[:name]
  end

  def all_guests_in_room(room)
    return room[:guests]
  end

  def check_guest_has_any_money(guest_money)
    if guest_money > 0
      return true
    else
      return false
    end
  end

  def checkin_guest(room, guest)
    room[:guests] << guest
  end

  def checkout_guest(room, name)
    room[:guests].delete(name)
    return room[:guests]   
  end

  def add_song_to_room(room, song)
    room[:songs] << song
  end

  def room_total_capacity(room)
    return room[:capacity]
  end

  def total_guests_in_room(room)
    return room[:guests].size()
  end

  def can_guest_be_added_to_room(room, guests_num)
    if guests_num > room[:capacity]
      return false
    else 
      return true
    end
  end

  def can_guest_afford_entry(guest_money)
    if entry_fee > guest_money
      return false
    else 
      return true
    end
  end

end

