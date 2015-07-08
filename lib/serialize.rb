require_relative 'modules/app'
require_relative 'serialize/container'
require_relative 'helpers/serialize_helper.rb'

puts "\nWelcome to Serialize."
puts "An application for storing the serial numbers of valuable items."
container = Container.new
container.open
loop do
	options
	print ":"
	value = gets.chomp.downcase
	case value
	when 'a'
		print "Item name: "
		name = gets.chomp
		print "Serial number: "
		serial_number = gets.chomp
		print "Price: "
		price = gets.chomp
		container.add_item(name, serial_number, price)
		puts "New item added!"
		puts seperator
		puts line_break
	when 'd'
		items = container.return_items(container.items)
		display_items(items)
		puts line_break
	when 'e'
		puts line_break
		print "What number item woule you like to edit? "
		index = gets.chomp
		if index.to_i > 0
			index = index.to_i - 1
			print "Item name(leave blank if not changing): "
			edit_name = gets.chomp
			puts edit_name.inspect
			exit
			print "Serial Number(leave blank if not changing): "
			edit_serial_number = gets.chomp
			print "Price(leave blank if not changing): "
			edit_price = gets.chomp

		else
			print "There is no item in that location."
		end
		puts line_break
	when 'r'
		puts line_break
		print "What number item would you like to remove from the list? "
		index = gets.chomp
		if index.to_i > 0
			index = index.to_i - 1
			if container.remove_item(index.to_i)
				puts "Item removed successfully!"
			else
				puts "There is no item in that location."
			end
		else
			puts "That is not a valid choice."
		end
		puts line_break
	when 's'
		print "Search term: "
		term = gets.chomp
		results = container.search(term)
		display_items(results, "\nNo matches to display.")
		puts line_break
	when 'i'
		puts line_break
		puts seperator
		puts 'Application Information'
		puts seperator
		puts "Name: #{App::NAME}"
		puts "Version: #{App::VERSION}"
		puts "Copyright: #{App::COPYRIGHT}"
		puts "Creator: #{App::CREATOR}"
		puts seperator
		puts line_break
	when 'q'
		container.save
		exit
	end
end