
class Customer
  attr_accessor :customer_id, :name, :address, :order
  def initialize(customer_id,name,address)
    @customer_id = customer_id
    @name = name
    @address = address
    @order = []
  end

end

