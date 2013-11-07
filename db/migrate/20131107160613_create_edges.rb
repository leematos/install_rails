class CreateEdges < ActiveRecord::Migration
  def change
    create_table :edges do |t|
      t.integer :predecessor_id
      t.integer :successor_id

      t.timestamps
    end
    add_index :edges, :predecessor_id
    add_index :edges, :successor_id
  end
end
