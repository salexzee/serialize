require_relative 'serialize/container'
require_relative 'helpers/serialize_helper.rb'

puts "\nWelcome to Serialize."
puts "An application for storing the serial numbers of valuable items."
container = Container.new
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
	when 's'
		print "Search term: "
		term = gets.chomp
		results = container.search(term)
		display_items(results, "\nNo matches to display.")
		puts line_break
	when 'e'
		exit
	end
end