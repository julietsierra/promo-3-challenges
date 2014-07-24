class Restaurant
  attr_accessor :employees, :customers
  attr_reader :name, :location, :phone_number, :number_of_employees
  def initialize(name,location,phone_number)
    @name = name
    @location = location
    @phone_number = phone_number
    @employees = []
    @customers = []
    @number_of_employees = @employees.size
    @number_of_customers = @customers.size

    @meals = {
      lamb_with_eggplant: 17,
      chili_con_carne: 15,
      t_bone: 28,
      spare_ribs: 22
    }
  end
end

