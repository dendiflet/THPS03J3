#controller.rb
require 'view/view'
require 'app/gossip'

class Controller



	def create_gossip


   # my_gossip = Gossip.new
    
    my_gossip = Gossip.new("Jean michemuche", "Féfé est de Bordeaux")
    my_gossip.save

	end

end


