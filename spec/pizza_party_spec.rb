require "pizza_party"

describe PizzaParty do

  before(:each) do
    @output = OurStringIO.new
    @input = OurStringIO.new("1\n")
    @negative_int_input = OurStringIO.new("-1\n")
    @pizza_party = PizzaParty.new(OurStringIO.new, @input)
  end

  describe "#calculate_portions" do
      context "one person, one pizza, one slice" do
        it "returns 1" do
          expect(subject.calculate_portions(1, 1, 1)).to be == 1
        end
      end

      context "eight people, one pizza, eight slices" do
        it "returns 1" do
          expect(subject.calculate_portions(8, 1, 8)).to be == 1
        end
      end

      context "eight people, two pizzas, eight slices" do
        it "returns 2" do
          expect(subject.calculate_portions(8, 2, 8)).to be == 2
        end
      end

      context "eight people, two pizzas, five slices" do
        it "returns 1 slice each, 2 remainder slices in an array" do
          expect(subject.calculate_portions(8, 2, 5)).to be == [1, 2]
        end
      end
    end

    describe "#people_prompt" do
      it "displays prompt for number of people" do
        @pizza_party.people_prompt
        expect(@output.string).to eq("How many people are there?\n")
      end
    end

    describe "#pizza_prompt" do
      it "displays prompt for number of pizzas" do
        @pizza_party.pizza_prompt
        expect(@output.string).to eq("How many pizzas are there?\n")
      end
    end

    describe "#slices_prompt" do
      it "displays prompt for number of slices" do
        @pizza_party.slices_prompt
        expect(@output.string).to eq("How many slices does each pizza have?\n")
      end
    end

    describe "#get_user_input" do
      context "user input is a string containing a positive integer" do
        it "gets user input and returns it" do
        expected_output = "1"
        expect(@pizza_party.get_user_input).to eq(expected_output)
        end
      end

      context "user input is a string containing a negative integer" do
        it "gets user input and prompts user for positive integer" do
        expected_output = "Please enter a positive number\n"
        pp = PizzaParty.new(@output, @negative_int_input)
        pp.get_user_input
        expect(@output.string).to eq expected_output
      end
    end


  end



end

# class OurStringIO
#
#   def initialize(string_to_input = "")
#     @string_to_input = string_to_input
#   end
#
#   def gets
#     @string_to_input
#   end
#
#   def puts(string = "")
#     @string_to_output = string
#   end
#
#   def string
#     @string_to_output + "\n"
#   end
#
# end
