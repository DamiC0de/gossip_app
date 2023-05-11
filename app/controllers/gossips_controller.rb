class GossipsController < ApplicationController
  def show
    @gossip = GossipModel.find(params[:id])
    @comments = CommentModel.where(gossip_model_id: @gossip.id)

    respond_to do |format|
      format.html { render template: 'home/gossips_show' }
      format.json { render json: @gossip }
    end
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
      redirect_to gossips_show_path(@gossip)
    else
      render :edit
    end
  end

  def destroy
    @gossip = GossipModel.find(params[:id])
    @gossip.destroy
    # rediriger vers quelque part
  end

  def edit
    @gossip = GossipModel.find(params[:id])
  end

  private

  def gossip_params
    params.require(:gossip_model).permit(:author, :content)
  end
end
