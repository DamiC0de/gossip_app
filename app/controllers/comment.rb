class CommentsController < ApplicationController
  def create
    @comment = CommentModel.new(comment_params)
    if @comment.save
      # rediriger vers quelque part si la sauvegarde est réussie
    else
      # re-rendre la vue 'new' si la sauvegarde échoue
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
    params.require(:comment).permit(:gossip_id, :content)
  end
end
