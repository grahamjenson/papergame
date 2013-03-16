class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :receipt_id
      t.datetime :date_time
      t.integer :retailer_id
      t.integer :shop_id
      t.integer :pos_id
      t.float :tax_total
      t.float :cost_total
      t.string :currency
      t.text :notes

      t.timestamps
    end
  end
end
