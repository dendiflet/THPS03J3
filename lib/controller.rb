#controller.rb
require 'view/view'
require 'app/gossip'

class Controller

  def initialize
  	@view = View.new
  end


	def create_gossip

    # my.gossip = Gossip.new(author, content)
    my_gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
    params = @view.create_gossip
    my_gossip.save(params)

	end

  def read
  	show = Gossip.new
  	show.show_gossip
  end


end


