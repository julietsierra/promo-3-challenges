class OrangeTree

  attr_reader :height,:fruit, :age

  def initialize
    @height = 0
    @age = 0
    @fruit = 0
    @dead = false
  # TODO: Implement all the specs defined in the README.md :)
  end



 def growing_fruits
    if @age <= 5
      @fruit = 0
    elsif @age > 5 && @age <= 10
      @fruit =  100
    elsif @age > 10 && @age< 15
          @fruit = 200
    else @fruit = 0
    end
  end

  def found_dead?
    false
    if @age >= 100
   return true
    end
  end

  def one_year_passes!
     @age += 1
     if age <= 10
      @height +=1

    growing_fruits
    found_dead?
  end







 def pick_a_fruit?
   @fruits -= 1
 end

end






#if age < 50
   #   probability_of_dying = 0
  #  else age > 50
    #  probability_of_dying = probability_of_dying +1
   # end

#def height(meter,age)
   # meter=0
   # age=0
    #while age < 10
      # meter = meter + 1
    #end
#end

#def age(year)
 # year = 0
  #Until year = 100
   # year = year +1
#end

#def fruits_produced(year,fruits)
  #while year <= 5

