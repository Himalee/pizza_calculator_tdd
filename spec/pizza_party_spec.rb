require "pizza_party"

describe PizzaParty do
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

end
