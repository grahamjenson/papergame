class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :retailer_id
      t.string :name
      t.string :prefix
      t.string :phone1
      t.string :phone2
      t.string :fax
      t.string :email
      t.string :website
      t.string :country

      t.timestamps
    end
  end
end
