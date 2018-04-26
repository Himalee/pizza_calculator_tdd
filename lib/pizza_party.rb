class PizzaParty

  def initialize(output = $stdout)
    @output = output
  end

  def people_prompt
    @output.puts "How many people are there?"
  end

  def pizza_prompt
    @output.puts "How many pizzas are there?"
  end

  def slices_prompt
    @output.puts "How many slices does each pizza have?"
  end

  def calculate_portions(people, pizza, slices)
        total_slices = pizza * slices
        [total_slices / people, total_slices % people]
  end

end


# class InputOutput
#
#   def initialize(people, pizza, slices)
#     @people = people
#     @pizza = pizza
#     @slices = slices
#   end
#
#   def print_to_stdout
#     people.gets
#     pizza.gets
#     slices.gets
#   end

#def initialize

  # Need to define inputs and outputs and test
  # string IO is the box
  # stdin is the gets
  # stdout is the puts
