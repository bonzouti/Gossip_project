class ThegossipprojectController < ApplicationController
  def home
    @gossips = Gossip.all  
  end

  def team   
  end

  def contact   
  end

  def welcome 
  end

  def gossip_page
    @mygossip = Gossip.find(params[:id]) 
  end

  def author_page
    @myauthor = User.find(params[:id])
  end

  def new
    @gossip = Gossip.new
    puts "*" * 60
    puts "on est dans le new gossip"
    puts params
    puts "*" * 60
  end

end 