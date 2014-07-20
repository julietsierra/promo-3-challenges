class OrangeTree

  attr_reader :height,:fruits,:age

  def initialize
    @height = 0
    @age = 0
    @fruits = 0
  # TODO: Implement all the specs defined in the README.md :)
  end

  def one_year_passes!
   if @age < 100
    @age += 1
    end
    if @age <= 10
         @height += 1
    end
    if @age > 100
      return true
     end
    fruit
  end

   def dead?
    (51..100).to_a.sample < @age
  end



 def fruit
    if (0..5).cover?(@age)
      @fruits = 0
    elsif (6..10).cover?(@age)
      @fruits = 100
    elsif (11..15).cover?(@age)
      @fruits = 200
    else
      @fruits = 0
    end
end


 def pick_a_fruit!
   @fruits -= 1
 end

end




