class Phone_number
  @@numbers = []

  attr_reader(:number, :type)

  def initialize(attributes)
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @id = @@numbers.length() + 1
  end

  def id
    @id
  end

  def self.all
    @@numbers
  end

  def self.clear
    @@numbers = []
  end

  def save
    @@numbers.push(self)
  end

  def self.find(id)
    found_number = nil
    @@numbers.each() do |number|
      if number.id().eql?(id)
        found_number = number
      end
    end
    found_number
  end
end
