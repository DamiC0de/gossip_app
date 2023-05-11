class GossipsController < ApplicationController
  def show
    @gossip = GossipModel.find(params[:id])
  end

  def new
    @gossip = GossipModel.new
  end

  def create
    @gossip = GossipModel.new(gossip_params)
    if @gossip.save
      # rediriger vers quelque part si la sauvegarde est réussie
    else
      # re-rendre la vue 'new' si la sauvegarde échoue
    end
  end

  def update
    @gossip = GossipModel.find(params[:id])
    if @gossip.update(gossip_params)
      # rediriger vers quelque part si la mise à jour est réussie
    else
      # re-rendre la vue 'edit' si la mise à jour échoue
    end
  end

  def destroy
    @gossip = GossipModel.find(params[:id])
    @gossip.destroy
    # rediriger vers quelque part
  end

  private

  def gossip_params
    params.require(:gossip).permit(:author, :content)
  end
end
