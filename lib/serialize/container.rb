require_relative 'item'

class Container
	attr_reader :items
	
	def initialize
		@items = []
	end

	def open
		file = File.open("lib/output/output.txt", "r").readlines.each do |line|
			start_index = line.index("(")
			end_index = line.index(")")
			add_item(line[0..(start_index - 1)], line[(start_index + 1)..(end_index - 1)], line[(end_index + 5) .. (line.length - 2)])
		end
	end

	def save
		file = File.open("lib/output/output.txt", "w")
		items.each do |item|
			file.puts item
		end
	end

	def add_item(name, serial_number, price=0)
		item = Item.new(name, serial_number, price)
		items.push(item)
	end

	def return_items(items)
		items
	end

	def search(term)
		results = []
		items.each do |item|
			if item.name.downcase.include?(term.downcase) || item.serial_number.downcase.include?(term.downcase)
				results.push(item)
			end
		end
		results
	end

	def remove_item(index)
		if !items.empty?
			return false if index > items.length
			items.delete_at(index)
			true
		else
			false
		end
	end

end