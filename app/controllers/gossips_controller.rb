class GossipsController < ApplicationController
  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    @name = params[:first_name]
    @gossips = Gossip.all  
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    @gossips = Gossip.find(params[:id])
  end

  def new
    # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @gossip = Gossip.new

  end
  
  def create 
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  @gossip = Gossip.new(title: params[:title], content: params[:content], 'user_id'=> User.last.id)
  if @gossip.save
    redirect_to gossips_path
  else
    render "new"
  end 
  end

  def edit
    @gossip = Gossip.find(params[:id])
    
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
    if @gossip.update(gossip_params)
      redirect_to gossips_path
    else 
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

end
