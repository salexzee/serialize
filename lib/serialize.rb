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
		container.add_item(name, serial_number)
		puts "New item added!"
		puts seperator
		puts line_break
	when 'd'
		items = container.return_items(container.items)
		display_items(items)
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
	when 'e'
		container.save
		exit
	end
end