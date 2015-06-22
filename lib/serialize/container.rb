require_relative 'item'

class Container
	attr_reader :items
	
	def initialize
		@items = []
	end

	def add_item(name, serial_number)
		item = Item.new(name, serial_number)
		items.push(item)
		puts "New item added!"
		puts "-"*10
		puts "\n"
	end

	def show_items
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
	end

end