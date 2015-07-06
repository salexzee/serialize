def options
	puts "Add Item(a)"
	puts "Display Items(d)"
	puts "Remove Item(r)"
	puts "Search(s)"
	puts "App Info(i)"
	puts "Exit(e)"
end

def seperator
	"-" * 50
end

def line_break
	"\n"
end

def display_items(items, phrase="\nNo items to display.")
	if !items.empty?
		puts line_break
		puts seperator
		puts "Showing Items"
		puts seperator
		num = 1
		items.each do |item|
			puts num.to_s + ": " + item.show
			num += 1
		end
		puts seperator
	else
		puts phrase
	end
end