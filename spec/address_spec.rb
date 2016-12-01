require("rspec")
require("address")

describe(Address) do
  before() do
    @test_address = Address.new(:street => "1234 SE Main St.", :city => "Portland", :state => "OR", :zip => "97214", :type => "home")
    @test_address2 = Address.new(:street => "1235 SE Main St.", :city => "Portland", :state => "OR", :zip => "97214", :type => "home")
    Address.clear()
  end

  describe("#street") do
    it("Will return the name of the street including house number.") do
      expect(@test_address.street()).to(eq("1234 SE Main St."))
    end
  end

  describe("#city") do
    it("Will return the name of the city.") do
      expect(@test_address.city()).to(eq("Portland"))
    end
  end

  describe("#state") do
    it("Will return the name of the state.") do
      expect(@test_address.state()).to(eq("OR"))
    end
  end

  describe("#zip") do
    it("Will return the name of the zip.") do
      expect(@test_address.zip()).to(eq("97214"))
    end
  end

  describe("#type") do
    it("Will return the name of the type.") do
      expect(@test_address.type()).to(eq("home"))
    end
  end

  describe("#id") do
    it("Will return the id of the address.") do
      expect(@test_address.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("Will return the class array.") do
      expect(Address.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("Will clear the class array.") do
      expect(Address.clear()).to(eq([]))
    end
  end

  describe("#save") do
    it("Will save the current address.") do
      @test_address.save()
      expect(Address.all()).to(eq([@test_address]))
    end
  end

  describe(".find") do
    it("Will find a specific address in the address array.") do
      @test_address.save()
      @test_address2.save()
      expect(Address.find(2)).to(eq(@test_address2))
    end
  end
end
