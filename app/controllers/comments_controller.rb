class CommentsController < ApplicationController
  def create
    @gossip = GossipModel.find(params[:gossip_id])
    @comment = @gossip.comment_models.build(comment_params)
    if @comment.save
      redirect_to gossips_show_path(@gossip)
    else
      render 'home/goosips_show'
    end
  end
  
  def update
    @comment = CommentModel.find(params[:id])
    if @comment.update(comment_params)
      # rediriger vers quelque part si la mise à jour est réussie
    else
      # re-rendre la vue 'edit' si la mise à jour échoue
    end
  end

  def destroy
    @comment = CommentModel.find(params[:id])
    @comment.destroy
    # rediriger vers quelque part
  end

  private

  def comment_params
    params.require(:comment_model).permit(:content)
  end
end
