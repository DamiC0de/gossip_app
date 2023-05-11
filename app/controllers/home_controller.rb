class HomeController < ApplicationController
  def home
    @gossips = GossipModel.all
    @comments = CommentModel.all
  end

  def contact
  end

  def team
  end

  def gossips_show
    @gossip = GossipModel.find(params[:id])
    @comments = CommentModel.where(gossip_id: @gossip.id)
  end
  

  def hello
    @name = params[:name].capitalize
  end
  
end
