class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin
      t.boolean :guest
      t.text :preferences
    end
  end
end
