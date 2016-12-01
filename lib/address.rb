class Address
  @@addresses = []
  attr_reader(:street, :city, :state, :zip, :type)

  def initialize(attributes)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type)
    @id = @@addresses.length() + 1
  end

  def id
    @id
  end

  def save
    @@addresses.push(self)
  end

  def self.all
    @@addresses
  end

  def self.clear
    @@addresses = []
  end

  def self.find(id)
    found_address = nil
    @@addresses.each do |address|
      if address.id().eql?(id)
        found_address = address
      end
    end
    found_address
  end
end
