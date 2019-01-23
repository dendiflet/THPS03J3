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
      all_gossips << gossip_temp # permet de rajouter cet objet au array
    end  
  #print all_gossips # on renvoie le résultat
  #binding.pry
  return all_gossips
  end



  def self.delete(index_num_to_delete)
  	all_less_one_gossips = []
  	gossip_temp = {}

  	#comme le self.all mais sans ecrire la ligne selectionée
    gossip_list = CSV.open("db/gossip.csv", "r")
    i = 0
    gossip_list.each do |ligne|
	    if i != index_num_to_delete
        gossip_temp = Gossip.new(ligne[0], ligne[1])
        all_less_one_gossips << gossip_temp
      end
      i += 1
    end
      #binding.pry


    nb_of_gossip_to_rewrite = all_less_one_gossips.size

    gossip_list = CSV.open("db/gossip.csv", "w") do |csv|
      0.upto(nb_of_gossip_to_rewrite-1) do |i|
        csv << [ all_less_one_gossips[i].author, all_less_one_gossips[i].content]
      end
    end
  end

end

  