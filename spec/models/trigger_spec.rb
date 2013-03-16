require 'spec_helper'

describe Trigger do
  context '#setup_webhook' do
    before(:each) do
      @trigger = FactoryGirl.build(:trigger)
      stub_request(:post, "https://ebaba076-8dc1-11e2-8801-757365725b5d:cd6a9f7f7cfa2070e263e8ea3979c0e951d86784@api.paperlessreceipt.com/push/add")
    end

    it 'should send a post the paperkut' do
      @trigger.save

      a_request(:post, /api.paperlessreceipt.com/).should have_been_made
    end

    it 'should have valid json content in the post' do
      @trigger.save

      a_request(:post, '/api.paperlessreceipt.com/').
        with(:headers => {'Content-Type' => 'application/json'}).should have_been_made
    end
  end
end
