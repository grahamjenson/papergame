class Shop < ActiveRecord::Base
  attr_accessible :address_city, :address_country, :address_postcode, :address_street, :address_street2, :address_suburb, :category, :email, :fax, :geo_lat, :geo_lon, :name, :phone1, :phone2, :retailer_id, :shop_id, :tax_id, :website
end
