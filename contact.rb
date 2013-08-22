#!/usr/bin/env ruby
class contact
	def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  	end


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
	end

	# a getter (*get* the value of an attribute)
  	def email
    @email
  	end

  # a setter (*set* the value of an attribute)
  	def note(note)
    @note = note
  	end
end	