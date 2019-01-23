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
		gossip_list = CSV.open("db/gossip.csv", "a+")
		  gossip_list.write(@author, @content)
	end

	def show_gossip
		CSV.read("db/gossip.csv")
	end


	def delete
	end
end
