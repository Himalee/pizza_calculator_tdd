require "pizza_party"

describe PizzaParty do

  describe ".divide" do

    context "given an empty string" do
      it "returns zero" do
        expect(PizzaParty.divide("")).to eql(0)

      end  
    end

  end


end
