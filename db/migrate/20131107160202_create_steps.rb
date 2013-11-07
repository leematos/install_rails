class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.string :permalink
      t.text :content
    end
    add_index :steps, :permalink
  end
end
