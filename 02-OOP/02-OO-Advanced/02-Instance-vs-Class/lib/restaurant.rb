
class Restaurant
  attr_reader :average_rating, :rating, :city
  def initialize(city,name)
     @name = name
     @average_rating = 0
     @rating= []
     @city = city
  end

  def rate(grade)
    @rating << grade
    @average_rating = @rating.inject(:+) / @rating.size

  end




  #TODO add relevant accessors if necessary
  def self.filter_by_city(restos,city)
    result=[]

    restos.each do |resto|
      result << resto if resto.city == city
    end

    result
  end


    #TODO: implement constructor with relevant instance variables
end






  #TODO: implement #filter_by_city and #rate methods


