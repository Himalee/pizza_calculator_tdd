require "pizza_party"

describe PizzaParty do

  before(:each) do
    @output = StringIO.new
    @pizza_party = PizzaParty.new(@output)
  end

  describe "#calculate_portions" do
      context "one person, one pizza, one slice" do
        it "returns 1" do
          expect(subject.calculate_portions(1, 1, 1)).to be == [1, 0]
        end
      end

      context "eight people, one pizza, eight slices" do
        it "returns 1" do
          expect(subject.calculate_portions(8, 1, 8)).to be == [1, 0]
        end
      end

      context "eight people, two pizzas, eight slices" do
        it "returns 2" do
          expect(subject.calculate_portions(8, 2, 8)).to be == [2, 0]
        end
      end

      context "eight people, two pizzas, five slices" do
        it "returns 2" do
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

end
