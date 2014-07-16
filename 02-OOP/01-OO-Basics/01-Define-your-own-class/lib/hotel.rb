

class Hotel
  attr_reader :rooms
  def initialize (rooms, category)
    @rooms = rooms
    @category = category
  end
end


george_v = Hotel.new(120, "Palace")



puts george_v.rooms
