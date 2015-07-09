class Item
	attr_accessor :name, :serial_number, :price
	def initialize(name, serial_number, price)
		@name = name
		@serial_number = serial_number
		@price = price
	end

	def to_s
		display
	end

	def inspect
		display
	end

	def show
		display
	end

	private

	def display
		"#{name}(#{serial_number}) - $#{price}"
	end
end