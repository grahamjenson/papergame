class Retailer < ActiveRecord::Base
  attr_accessible :country, :email, :fax, :name, :phone1, :phone2, :prefix, :retailer_id, :website
end
