class Award < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user

  attr_accessible :complete, :description, :image, :title, :user_id
end
