require('rspec')
require('pry')
require('email')

describe(Email) do
  before() do
    Email.clear()
    @email = Email.new(:address => "tyferrin@gmail.com", :type => "personal")
    @email.save()
    @email2 = Email.new(:address => "andrewaccuardi@gmail.com", :type => "personal")
    @email2.save()
  end

  describe("#address") do
    it('finds the email address') do
      expect(@email.address()).to(eq("tyferrin@gmail.com"))
    end
  end

  describe("#type") do
    it('finds the email type') do
      expect(@email.type()).to(eq("personal"))
    end
  end

  describe("#id") do
    it('finds the email id') do
      expect(@email.id()).to(eq(1))
    end
  end

  describe(".all") do
    it('returns the email class array') do
      Email.clear()
      expect(Email.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('saves the email address') do
      Email.clear()
      @email.save()
      expect(Email.all()).to(eq([@email]))
    end
  end

  describe(".clear") do
    it('clears the email address array') do
      Email.clear()
      expect(Email.all()).to(eq([]))
    end
  end

  describe("#find") do
    it('finds the specific email address by id') do
      expect(Email.find(2)).to(eq(@email2))
    end
  end

end
