class Award < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :user

  attr_accessible :complete, :description, :image, :title, :user_id

  class << self
    def create_from_webhook_params(params)
      award = Award.new
      award.user_id     = params[:user_id]
      award.retailer_id = params[:retailer_id]
      award.title       = params[:title]
      award.description = params[:description]
      award.save
      award
    end
  end
end
