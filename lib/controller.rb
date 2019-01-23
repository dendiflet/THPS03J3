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

#puts params
#binding.pry
    
    my_gossip = Gossip.new(params[:author], params[:content] )
    my_gossip.save

	end

  def index_gossips

#Demander au model un array qui contient toutes les potins que l'on a en base
#demander à la view d’exécuter sa propre méthode index_gossips qui affichera tous les potins


  	array_gossip_list = Gossip.all#mettre qque chose du model
  	puts array_gossip_list

#binding.pry

  	#@view.index_gossips(array_gossip_list) #envoie l'array vers view

  end




end


