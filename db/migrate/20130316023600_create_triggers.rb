class CreateTriggers < ActiveRecord::Migration
  def change
    create_table :triggers do |t|
      t.string :name
      t.string :description
      t.string :legals
      t.text :rule
      t.text :action
      t.datetime :date_from
      t.datetime :date_to
      t.integer :qty
      t.string :code
      t.string :pos_id
      t.string :shop_id
      t.string :retailer_id

      t.timestamps
    end
  end
end
