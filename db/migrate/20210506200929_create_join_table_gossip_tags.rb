class CreateJoinTableGossipTags < ActiveRecord::Migration[6.1]
  def change
    create_table :join_table_gossip_tags do |t|
      belongs_to :gossip, index: true
      belongs_to :tag, index: true

      t.timestamps
    end
  end
end
