class Playboy
attr_writer :hair_length
attr_reader :hair_length, :conquests, :nationality
attr_accessor :name,:hair_length


  INITIAL_HAIR_LENGTH = 20  # beautiful long playboy hair

  def initialize(name, nationality)
    @conquests = []
    @name, @nationality = name, nationality
    @hair_length = INITIAL_HAIR_LENGTH
  end

  def meets(lady)
    @conquests << lady unless @married
  end

end