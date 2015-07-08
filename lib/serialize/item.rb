class Item
	attr_reader :name, :serial_number, :price
	def initialize(name, serial_number, price)
		@name = name
		@serial_number = serial_number
		@price = price
	end

	def edit(edit_name=name, edit_serial_number=serial_number, edit_price=price)
		name = edit_name
		serial_number = edit_serial_number
		price = edit_price
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