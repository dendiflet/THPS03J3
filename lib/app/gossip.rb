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

end
