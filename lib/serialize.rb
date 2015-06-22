require_relative 'serialize/container'

def options
	puts "Add Item(a)"
	puts "Show Items(s)"
	puts "Exit(e)"
end

puts "\nWelcome to Serialize."
puts "An application for storing the serial numbers of valuable items."
container = Container.new
loop do
	options
	print ":"
	value = gets.chomp.downcase
	case value
	when 'a'
		puts "Item name: "
		print ":"
		name = gets.chomp
		print ":"
		puts "Serial number: "
		serial_number = gets.chomp
		container.add_item(name, serial_number)
		puts "New item added!"
		puts "-"*10
		puts "\n"
	when 's'
		container.show_items
	when 'e'
		exit
	end
end