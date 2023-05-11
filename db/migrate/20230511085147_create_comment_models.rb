class CreateCommentModels < ActiveRecord::Migration[7.0]
  def change
    create_table :comment_models do |t|
      t.integer :gossip_id
      t.text :content

      t.timestamps
    end
  end
end
