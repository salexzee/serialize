require 'item'

class Container
	attr_reader :items
	
	def initialize
		@items = []
	end

	def add_item(name, serial_number)
		item = Item.new(name, serial_number)
		items.push(item)
	end

end