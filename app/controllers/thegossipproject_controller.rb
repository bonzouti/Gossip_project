class ThegossipprojectController < ApplicationController
  def home
    @gossips =Gossip.all
    
  end

  def team
    
  end
  def contact
    
  end
  def welcome
   puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:first_name] 
    puts "$" * 60
    
  end
  def gossip_page
    @mygossip = Gossip.find(params[:id]) 
  end

  def author_page
    @myauthor = User.find(params[:id])
    
  end
end
