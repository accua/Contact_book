require('rspec')
require('pry')
require('contact')
require('address')
require('email')
require('phone_number')

describe(Contact) do

  before() do
    Contact.clear()
  end

  describe('#fname') do
    it("finds a contact's first name") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.fname()).to(eq("Tyler"))
    end
  end

  describe('#lname') do
    it("finds a contact's last name") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.lname()).to(eq("Ferrin"))
    end
  end

  describe('#title') do
    it("finds a contact's title") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.title()).to(eq("Developer"))
    end
  end

  describe('#company') do
    it("finds a contact's company") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.company()).to(eq("Tesla"))
    end
  end

  describe('#id') do
    it("finds a contact's id") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.id()).to(eq(1))
    end
  end

  describe('#email') do
    it("finds a contact's email") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.email()).to(eq([]))
    end
  end

  describe('#phone_number') do
    it("finds a contact's id") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.phone_number()).to(eq([]))
    end
  end

  describe('#address') do
    it("finds a contact's id") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(contact1.address()).to(eq([]))
    end
  end

  describe('.all') do
    it("returns all contacts") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a contact object") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla").save()
      contact2 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla").save()
      expect(Contact.all().length()).to(eq(2))
    end
  end

  describe('.find') do
    it("finds a contact object") do
      contact1 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      contact1.save()
      contact2 = Contact.new(:fname =>"Tyler", :lname => "Ferrin", :title => "Developer", :company => "Tesla")
      contact2.save()
      expect(Contact.find(contact2.id())).to(eq(contact2))

    end
  end

end
