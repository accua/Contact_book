require('sinatra')
require('sinatra/reloader')
require('pry')
require('capybara')
require('./lib/contact')
require('./lib/address')
require('./lib/email')
require('./lib/phone_number')
also_reload("lib/**/*.rb")


get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/') do
  fname = params.fetch("fname")
  lname = params.fetch("lname")
  company = params.fetch("company")
  title = params.fetch("title")
  Contact.new(:fname => fname, :lname => lname, :company => company, :title => title).save()
  @contacts = Contact.all()
  erb(:index)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch("id").to_i)
  erb(:contact)
end

post('/contact') do
  @contact = Contact.find(params.fetch("contact_id").to_i())
  address_type = params.fetch("address_type")
  street_address = params.fetch("street_address")
  city = params.fetch("city")
  state = params.fetch("state")
  zip = params.fetch("zip")
  phone_type = params.fetch("phone_type")
  phone_number = params.fetch("phone_number").to_i()
  email_type = params.fetch("email_type")
  email = params.fetch("email")
  @address = Address.new(:type => address_type, :street => street_address, :city => city, :state => state, :zip => zip)
  @phone = Phone_number.new(:type => phone_type, :number => phone_number)
  @email = Email.new(:type => email_type, :address => email)
  @contact.add_address(@address)
  @contact.add_phone_number(@phone)
  @contact.add_email(@email)
  @address.save()
  @phone.save()
  @email.save()
  erb(:contact)
end
