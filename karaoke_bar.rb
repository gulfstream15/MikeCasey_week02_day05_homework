class KaraokeBar

  attr_accessor :name
  attr_accessor :rooms
  attr_accessor :guests
  attr_accessor :songs

  def initialize(name)
    @name = name
    @guests = guests
    @songs = songs
    @rooms = rooms
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

  def checkout_guest(room)
    room[:guests].delete("Anne")
    return room[:guests]   
  end

  def add_song_to_room(room, song)
    room[:songs] << song
  end

end

