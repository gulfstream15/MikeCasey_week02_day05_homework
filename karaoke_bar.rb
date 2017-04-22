class KaraokeBar

  attr_accessor :name

  def initialize(name)
    @name = name
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

  def get_max_guest_for_room(room)
    room[:max_guests]
  end

  


end

