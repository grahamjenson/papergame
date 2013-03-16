class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :retailer_id
      t.string :shop_id
      t.string :category
      t.string :name
      t.string :tax_id
      t.float :geo_lon
      t.float :geo_lat
      t.string :phone1
      t.string :phone2
      t.string :fax
      t.string :email
      t.string :website
      t.string :address_street
      t.string :address_street2
      t.string :address_suburb
      t.string :address_city
      t.string :address_postcode
      t.string :address_country

      t.timestamps
    end
  end
end
