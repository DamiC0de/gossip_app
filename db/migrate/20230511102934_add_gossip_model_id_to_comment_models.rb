class AddGossipModelIdToCommentModels < ActiveRecord::Migration[7.0]
  def change
    add_column :comment_models, :gossip_model_id, :integer
  end
end
