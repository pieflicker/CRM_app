#!/usr/bin/env ruby

require './database'

class Contact
	 #attr_accessor :id, :email	

	#^^ that thing means we don't have to write the next bit
	#setter
	#def id=()
	#	@id = 
	#getter
	#def id
	#	@id #+ 1000
	#end

	#end
	def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  	end
end