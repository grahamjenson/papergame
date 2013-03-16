require 'httparty'

class Trigger < ActiveRecord::Base

  attr_accessible :action, :code, :date_from, :date_to, :description, :legals, :name, :pos_id, :qty, :retailer_id, :rule, :shop_id

  validates :retailer_id, :name, :description, :rule, :action, presence: true

  after_save :initialize_webhook

  serialize :action, Hash
  serialize :rule, Hash

  def initialize_webhook
    auth = {:username => "ebaba076-8dc1-11e2-8801-757365725b5d", :password => "cd6a9f7f7cfa2070e263e8ea3979c0e951d86784"}
    options = { :body => {'push-add' => get_webhook_hash}, :basic_auth => auth, :headers => { 'Content-Type' => 'application/json' } }
    HTTParty.post("https://api.paperlessreceipt.com/push/add", options)
  end

  def get_webhook_hash
    hash = {}
    hash[:retailer_id] = retailer_id
    hash[:shop_id] = shop_id if shop_id
    hash[:pos_id] = pos_id if pos_id
    hash[:name] = name
    hash[:description] = description
    hash[:legals] = legals if legals
    hash[:code] = code if code
    hash[:rule] = [ rule ]
    hash[:action] = [ action ]
    hash[:date_from] = date_from if date_from
    hash[:date_to] = date_to if date_to
    hash[:qty] = qty if qty
    hash.to_json
  end

end
