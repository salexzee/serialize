require_relative 'modules/app'
require_relative 'serialize/container'
require_relative 'helpers/serialize_helper.rb'

puts "\nWelcome to Serialize."
puts "An application for storing the serial numbers of valuable items."
container = Container.new
container.open
disp = Display.new(container)
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
		print disp.ask_for_number("edit")
		index = gets.chomp
		if index.to_i > 0
			index = index.to_i - 1
			print "Item name(leave blank if not changing): "
			edit_name = gets.chomp
			print "Serial Number(leave blank if not changing): "
			edit_serial_number = gets.chomp
			print "Price(leave blank if not changing): "
			edit_price = gets.chomp
			items = container.return_items(container.items)
			items[index].name = edit_name unless edit_name == ""
			items[index].serial_number = edit_serial_number unless edit_serial_number == ""
			items[index].price = edit_price unless edit_price == ""
			puts "Item updated!" 
		else
			print disp.no_item_in_location
		end
		puts line_break
	when 'r'
		puts line_break
		print disp.ask_for_number("remove")
		index = gets.chomp
		if index.to_i > 0
			index = index.to_i - 1
			if container.remove_item(index.to_i)
				puts disp.item_removed
			else
				puts disp.no_item_in_location
			end
		else
			puts disp.not_valid_choice
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