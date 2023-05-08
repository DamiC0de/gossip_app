class HomeController < ApplicationController
  def home
    @gossips = Gossip.all
    @comments = Comment.all
  end

  def contact
  end

  def team
  end

  def gossips_show
    @gossip = Gossip.find(params[:id].to_i)
    @comments = Comment.find_by_gossip_id(@gossip.id)
  end
  
end
