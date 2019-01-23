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

end


