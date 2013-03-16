class Trigger < ActiveRecord::Base
  attr_accessible :action, :code, :date_from, :date_to, :description, :legals, :name, :pos_id, :qty, :retailer_id, :rule, :shop_id

  validates :retailer_id, :name, :description, :rule, :action, presence: true

end
