class Item
	attr_reader :name, :serial_number
	def initialize(name, serial_number)
		@name = name
		@serial_number = serial_number
	end

	def to_s
		display
	end

	def inspect
		display
	end

	private

	def display
		"#{name}: #{serial_number}"
	end
end