class Award < ActiveRecord::Base
  attr_accessible :complete, :description, :image, :retailer_id, :title, :user_id
end
