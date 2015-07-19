class Display
	attr_reader :container

	# Want to end up making larger methods which are
	# mixtures of some of the current and planned
	# methods to help clean up the serialize.rb file.

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

	def not_valid_choice
		return "That is not a valid choice."
	end
end