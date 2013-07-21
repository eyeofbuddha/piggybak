# This migration comes from piggybak_engine (originally 20111227150432)
class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, :null => false
      t.integer :quantity, :null => false
      t.references :variant, :null => false
      t.decimal :total
    end
  end
end
