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

  def can_guest_afford_entry(guest_money)
    if entry_fee > guest_money
      return false
    else 
      return true
    end
  end
  
end

