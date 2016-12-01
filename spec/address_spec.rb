require("rspec")
require("address")

describe(Address) do

  describe("#street") do
    it("Will return the name of the street including house number.") do
      test_address = Address.new(:street => "1234 SE Main St.", :city => "Portland", :state => "OR", :zip => "97214")
      expect(test_address.street()).to(eq("1234 SE Main St."))
    end
  end
end
