class Room

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def room_has_name(room)
    return room[:name]
  end  

  def show_current_guests_in_room(room)
    return room[:guests]
  end

  def room_total_capacity(room)
    return room[:capacity]
  end

  def show_current_number_guests_in_room(room)
    return room[:guests].size()
  end

  # def can_guests_be_added_to_room(room, guests_num)
  #   if guests_num > room[:capacity]
  #     return false
  #   else 
  #     return true
  #   end
  # end

  # def checkin_guest(room, guest)
  #   room[:guests] << guest
  # end

  # def checkout_guest(room, name)
  #   room[:guests].delete(name)
  #   return room[:guests]   
  # end

  # def add_song_to_room(room, song)
  #   room[:songs] << song
  # end



end