# view.rb
require 'csv'

class View

	def create_gossip
		puts "quel est ton nom charogne ?"
		author_just_asked = gets.chomp.to_s
		puts "quel est le ragot a propager?"
		raggot_just_asked = gets.chomp.to_s
		return params = {content: raggot_just_asked, author: author_just_asked}
	end



end

