require('rspec')
require('pry')
require('contact')
require('address')
require('email')
require('phone_number')

describe(Contact) do

  before() do
    Contact.clear()
    @contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
    @contact1.save()
    @contact2 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
    @contact2.save()
    @email = Email.new(:address => "dude@dude.com", :type => "Homey")
  end

  describe('#fname') do
    it("finds a contact's first name") do
      expect(@contact1.fname()).to(eq("Tyler"))
    end
  end

  describe('#lname') do
    it("finds a @contact's last name") do

      expect(@contact1.lname()).to(eq("Ferrin"))
    end
  end

  describe('#title') do
    it("finds a @contact's title") do

      expect(@contact1.title()).to(eq("Developer"))
    end
  end

  describe('#company') do
    it("finds a @contact's company") do

      expect(@contact1.company()).to(eq("Tesla"))
    end
  end

  describe('#id') do
    it("finds a @contact's id") do

      expect(@contact1.id()).to(eq(1))
    end
  end

  describe('#email') do
    it("finds a @contact's email") do

      expect(@contact1.emails()).to(eq([]))
    end
  end

  describe('#phone_number') do
    it("finds a @contact's id") do

      expect(@contact1.phone_number()).to(eq([]))
    end
  end

  describe('#address') do
    it("finds a @contact's id") do
      expect(@contact1.address()).to(eq([]))
    end
  end

  describe('.all') do
    it("returns all @contacts") do
      expect(Contact.all()).to(eq([@contact1, @contact2]))
    end
  end

  describe('#save') do
    it("saves a @contact object") do
      expect(Contact.all().length()).to(eq(2))
    end
  end

  describe('.find') do
    it("finds a @contact object") do
      expect(Contact.find(@contact2.id())).to(eq(@contact2))
    end
  end

  describe('#add_email') do
    it('adds an email object') do
      @contact1.add_email(@email)
      expect(@contact1.emails()).to(eq([@email]))
    end
  end

end
