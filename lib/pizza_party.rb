class PizzaParty

  def calculate_portions(people, pizza, slices)
        total_slices = pizza * slices
        [total_slices / people, total_slices % people]

  end

end

#def initialize

  # Need to define inputs and outputs and test
  # string IO is the box
  # stdin is the gets
  # stdout is the puts
