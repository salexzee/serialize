require_relative 'item'

class Container
	attr_reader :items
	
	def initialize
		@items = []
	end

	def add_item(name, serial_number)
		item = Item.new(name, serial_number)
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
			items.delete_at(index)
			true
		else
			false
		end
	end

end