class Email
  @@emails = []

  attr_reader(:address, :type)

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
    @id = @@emails.length() + 1
  end

  def id
    @id
  end

  def self.all
    @@emails
  end

  def self.clear
    @@emails = []
  end

  def save
    @@emails.push(self)
  end

  def self.find(id)
    found_email = nil
    @@emails.each() do |email|
      if email.id().eql?(id)
        found_email = email
      end
    end
    found_email
  end
end
