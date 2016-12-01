class Contact
  @@contacts = []

  attr_reader(:fname, :lname, :title, :company)

  def initialize(attributes)
    @fname = attributes.fetch(:fname)
    @lname = attributes.fetch(:lname)
    @title = attributes.fetch(:title)
    @company = attributes.fetch(:company)
    @id = @@contacts.length.+(1)
    @address = []
    @email = []
    @phone_number = []
  end

  def id
    @id
  end

  def email
    @email
  end

  def phone_number
    @phone_number
  end

  def address
    @address
  end

  def self.all
    @@contacts
  end

  def self.clear
    @@contacts = []
  end

  def save
    @@contacts.push(self)
  end

  def add_address(address)
    @address.push(address)
  end

  def add_phone_number(phone_number)
    @phone_number.push(phone_number)
  end

  def add_email(email)
    @email.push(email)
  end

  def self.find(id)
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id)
        found_contact = contact
      end
    end
    found_contact
  end
end
