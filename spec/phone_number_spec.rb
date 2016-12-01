require('rspec')
require('pry')
require('phone_number')

describe(Phone_number) do
  before() do
    Phone_number.clear()
    @number = Phone_number.new(:number => 5039301105, :type => "Cell")
    @number.save()
    @number2 = Phone_number.new(:number => 5033757976, :type => "Home")
    @number2.save()
  end

  describe("#number") do
    it('finds the phone number') do
      expect(@number.number()).to(eq(5039301105))
    end
  end

  describe("#type") do
    it('finds the phone number type') do
      expect(@number.type()).to(eq("Cell"))
    end
  end

  describe("#id") do
    it('finds the email id') do
      expect(@number.id()).to(eq(1))
    end
  end

  describe(".all") do
    it('returns the email class array') do
      expect(Phone_number.all()).to(eq([@number, @number2]))
    end
  end

  describe("#save") do
    it('saves the email address') do
      expect(Phone_number.all()).to(eq([@number,@number2]))
    end
  end

  describe(".clear") do
    it('clears the email address array') do
      Phone_number.clear()
      expect(Phone_number.all()).to(eq([]))
    end
  end

  describe("#find") do
    it('finds the specific email address by id') do
      expect(Phone_number.find(2)).to(eq(@number2))
    end
  end

end
