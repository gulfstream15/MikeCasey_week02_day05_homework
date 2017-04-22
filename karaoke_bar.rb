class KaraokeBar

  attr_accessor :name
  attr_accessor :entry_fee

  def initialize(name, entry_fee)
    @name = name
    @entry_fee = entry_fee
  end

  def get_room_name(room)
    return room[:name]
  end

  def get_all_guests_in_room(room)
    return room[:guests]
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

  def get_room_capacity(room)
    return room[:capacity]
  end

  def get_total_guests_in_room(room)
    return room[:guests].size()
  end

  def guest_added_to_room(room, guests_num)
   if guests_num > room[:capacity]
      return false
   end
   return true
  end

  def can_guest_afford_entry(guest_money)
    if entry_fee > guest_money
       return false
    end
    return true
  end

end

