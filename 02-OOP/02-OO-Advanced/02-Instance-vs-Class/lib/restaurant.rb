
class Restaurant
  attr_reader :average_rating, :rating
  attr_accessor :city, :name
  def initialize(name,city)
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
def self.filter_by_city(names,city)
  result=[]
  names = []
  names.each do |restaurant|
    if restaurant.city == city
     result << restaurant
     else
       false
    end
  end
    return result
  end


    #TODO: implement constructor with relevant instance variables
end






  #TODO: implement #filter_by_city and #rate methods


