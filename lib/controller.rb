#controller.rb
require 'view/view'
require 'app/gossip'
require 'pry'


class Controller

  def initialize
  	@view = View.new
  end

	def create_gossip
		params = @view.create_gossip
    my_gossip = Gossip.new(params[:author], params[:content] )
    my_gossip.save

	end

  def index_gossips
  	array_gossip_list = Gossip.all 
  	print array_gossip_list
  	puts "\n\n"
  	@view.index_gossips(array_gossip_list)
  end

  def delete_gossip
  	# discution avec l'utilisateur
  	nb_of_gossip = Gossip.all.size
  	params = @view.delete_gossip(nb_of_gossip)
  	index_num_to_delete = params - 1
    # le modèle va supprimer la ligne selectionnée
    Gossip.delete(index_num_to_delete)
    




#binding.pry

  end




end


