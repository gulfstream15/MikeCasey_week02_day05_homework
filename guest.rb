class Guest

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def get_guest_name()
    return @name
  end

end