require_relative 'serialize/container'

def options
	puts "Add Item(a)"
	puts "Display Items(d)"
	puts "Search(s)"
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
		print "Item name: "
		name = gets.chomp
		print "Serial number: "
		serial_number = gets.chomp
		container.add_item(name, serial_number)
		puts "New item added!"
		puts "-"*10
		puts "\n"
	when 'd'
		items = container.return_items(container.items)
		if !items.empty?
			puts "\nShowing Items"
			puts "-"*10
			num = 1
			items.each do |item|
				puts num.to_s + ": " + item.show
				num += 1
			end
			puts "-"*10
		else
			puts "\nNo items to display."
		end
		puts "\n"
	when 's'
		print "Search term: "
		term = gets.chomp
		results = container.search(term)
		if !results.empty?
			puts "\nShowing Items"
			puts "-"*10
			num = 1
			results.each do |result|
				puts num.to_s + ": " + result.show
				num += 1
			end
			puts "-"*10
		else
			puts "\nNo items match your query."
		end
		puts "\n"
	when 'e'
		exit
	end
end