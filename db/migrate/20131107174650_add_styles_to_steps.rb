class AddStylesToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :styles, :text
  end
end
