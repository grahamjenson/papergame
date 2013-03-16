class Receipt < ActiveRecord::Base
  attr_accessible :cost_total, :currency, :date_time, :notes, :pos_id, :receipt_id, :retailer_id, :shop_id, :tax_total
end
