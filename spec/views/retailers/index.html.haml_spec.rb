require 'spec_helper'

describe "retailers/index" do
  before(:each) do
    assign(:retailers, [
      stub_model(Retailer,
        :retailer_id => "Retailer",
        :name => "Name",
        :prefix => "Prefix",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :fax => "Fax",
        :email => "Email",
        :website => "Website",
        :country => "Country"
      ),
      stub_model(Retailer,
        :retailer_id => "Retailer",
        :name => "Name",
        :prefix => "Prefix",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :fax => "Fax",
        :email => "Email",
        :website => "Website",
        :country => "Country"
      )
    ])
  end

  it "renders a list of retailers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Retailer".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Prefix".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
