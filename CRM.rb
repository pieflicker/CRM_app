

#CRM app
require './contact' 
require './database'
 

class CRM
	
	def print_main_menu
		puts "Please make your selection"

		puts "Add contact"
		puts "Modify contact"
		puts "Delete contact"
		puts "Display all"
		puts "Display attribute"
		puts "Exit"
	end

	def main_menu
		print_main_menu
		user_selected = gets.chomp
		user_selected.downcase!
		call_option(user_selected)
	end

	def call_option(user_selected)
	  add_new_contact if user_selected == "add contact"
	  modify_existing_contact if user_selected == "modify contact"
	  delete_existing_contact if user_selected == "delete contact"
	  display_all if user_selected == "display all"
	  display_attribute if user_selected == "display attribute"
	  exit if user_selected == "exit"
	end
end

#class Contact
#	def initialize(first_name, last_name, email, note)
#  	 	@first_name = first_name
#   	@last_name = last_name
#   	@email = email
#   	@note = note
#  	end
#end

	def add_new_contact
		print "Enter the first name: "
		first_name=gets.chomp
		print "Enter the last name: "
		last_name=gets.chomp
		print "Enter their email address: "
		email=gets.chomp
		print "Enter any notes: "
		note=gets.chomp
		contact=Contact.new(first_name, last_name, email, note)
		Database.new
		Database.add_contact(contact)
		Database.contacts
		a_crm_app = CRM.new
		a_crm_app.main_menu
	end

	def modify_existing_contact
		print "Who's details would you like to edit?"
		first_name=gets.chomp
		print "are you sure you want to edit #{@contacts}'s details? (y/n)"
		confirmation=gets.chomp
			if confirmation=="y"
				then 
			else
				a_crm_app = CRM.new
				a_crm_app.main_menu
			end
	end

	def delete_existing_contact
		print "Who would you like to remove?"

	end

	def display_all
		puts "#{@contacts} #{@contacts} #{@contacts} #{@contacts}"
		
	end

	def display_attribute
		puts "Which attribute would you like to see?"
		puts "[1] First name"
		puts "[2] Last name" 
		puts "[3] Email"
		puts "[4] Notes"
		which_attribute=gets.chomp
		case which_attribute
		when which_attribute="1" 
			puts "First name: #{@first_name}"
		when which_attribute="2"
			puts "Last name: #{@last_name}"
		when which_attribute="3"
			puts "Email address: #{@email}"
		when which_attribute="4"
			puts "Notes: #{@note}"
		else puts "something went wrong there, please select again"
		puts display_attribute
		end

	end

	def exit
		puts "\e[H\e[2J"
		a_crm_app = CRM.new
		a_crm_app.main_menu
	end
	# a getter (*get* the value of an attribute)
  	#def email
    #@email
  	#end

  # a setter (*set* the value of an attribute)
  	#def note(note)
    #@note = note
  	#end


#class Database
#  @contacts = []
#  @id = 1000

#  def self.add_contact(contact)
#    contact.id = @id
#    @contacts << contact
#    @id += 1
#  end

#  def self.contacts
#    @contacts
#  end
#end

a_crm_app = CRM.new
a_crm_app.main_menu



