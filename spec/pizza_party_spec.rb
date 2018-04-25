require "pizza_party"

describe PizzaParty do

  describe ".people" do

    context "given an empty string" do
      it "returns zero" do
        expect(PizzaParty.people("")).to eql(0)

      end
    end

  end

  describe ".pizza" do

    context "given an empty string" do
      it "returns zero" do
        expect(PizzaParty.pizza("")).to eql(0)
      end
    end

  end

end
