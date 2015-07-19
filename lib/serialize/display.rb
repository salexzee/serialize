class Display
	attr_reader :container

	def initialize(container)
		container = container
	end

	def item_removed
		return "Item removed successfully!"
	end

	def no_item_in_location
		return "There is no item in that location."
	end

	def ask_for_number(action)
		return "Which number would you like to #{action}? "
	end

	def not_vallid_choice
		return "That is not a valid choice."
	end
end