class CreditCard
  
  attr_accessor :name, :number, :exp

  def initialize(name, number, exp)
    @name = name
    @number = number
    @exp = exp
  end

end