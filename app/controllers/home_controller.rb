class HomeController < ApplicationController
  def home
    @gossips = GossipModel.all
    @comments = CommentModel.all
  end

  def contact
  end

  def team
  end

  def register
  end

  def hello
    @name = params[:name].capitalize
  end
  
end
