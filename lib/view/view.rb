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

	def index_gossips(array_dinstance)
		array_dinstance.each_index do |i|
			puts "potin n°#{i+1} : #{array_dinstance[i].author}, son ragot => #{array_dinstance[i].content}"	
		end
	end

  def delete_gossip(nb_of_gossip)
  	puts "\n il y a #{nb_of_gossip}"
  	puts "quel est le numéro du ragot que tu veux supprimer ?"
  	print " -> "
  	choice = gets.chomp.to_i
  	unless (1..nb_of_gossip).cover?(choice)
      puts "rentre un numéro valide stp"
      delete_gossip(nb_of_gossip)
    else
    	nb_to_delete = choice - 1
  	puts "le gossip numéro #{choice} contenant : #{Gossip.all[nb_to_delete].content} va etre supprimé"
    return choice
    end
  end


end
