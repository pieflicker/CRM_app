#!/usr/bin/env ruby

#CRM app
require "contact"
require "database"

class CRM
	def print_main_menu
		puts "Please make your selection"

		puts "Add contact"
		puts "Modify contact"
		puts "Delete contact"
		puts "Display all"
		puts "Dispay attribute"
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
	  display_existing_contact if user_selected == "display all"
	  display_attribute if user_selected == "display attribute"
	  exit if user_selected == "exit"
	end
end


a_crm_app = CRM.new
a_crm_app.main_menu






