
require './contact'
class Database
  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id#1000 atm
    @contacts << contact
    @id += 1
  end

  def self.contacts
    @contacts
  end
end


contact = Contact.new("john", "smith", "stuff", "string4")
Database.add_contact(contact)
Database.contacts
