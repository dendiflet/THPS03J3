# gossip.rb
require 'csv'
require 'pry'

class Gossip
	attr_reader :author, :content


  def initialize(author,content)
    @author = author
    @content = content
  end

	def save
		gossip_list = CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content]
    end
	end

  def self.all
  	all_gossips = []
  	gossip_temp = {}
  	gossip_list = CSV.open("db/gossip.csv", "r")
  	gossip_list.each do |ligne|
    gossip_temp = Gossip.new(ligne[0], ligne[1])

#binding.pry

     # permet de créer un objet gossip
    
    all_gossips << gossip_temp # permet de rajouter cet objet au array
  end
   
  print all_gossips # on renvoie le résultat
  end

end

  # création d'une array vide qui s'appelle all_gossips
  # chaque ligne de ton CSV.each do |ligne|

    # gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
    # all_gossips << gossip_provisoire - permet de rajouter cet objet au array
  # end
  # return all_gossips - on renvoie le résultat