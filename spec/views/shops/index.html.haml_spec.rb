require 'spec_helper'

describe "shops/index" do
  before(:each) do
    assign(:shops, [
      stub_model(Shop,
        :retailer_id => "Retailer",
        :shop_id => "Shop",
        :category => "Category",
        :name => "Name",
        :tax_id => "Tax",
        :geo_lon => 1.5,
        :geo_lat => 1.5,
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :fax => "Fax",
        :email => "Email",
        :website => "Website",
        :address_street => "Address Street",
        :address_street2 => "Address Street2",
        :address_suburb => "Address Suburb",
        :address_city => "Address City",
        :address_postcode => "Address Postcode",
        :address_country => "Address Country"
      ),
      stub_model(Shop,
        :retailer_id => "Retailer",
        :shop_id => "Shop",
        :category => "Category",
        :name => "Name",
        :tax_id => "Tax",
        :geo_lon => 1.5,
        :geo_lat => 1.5,
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :fax => "Fax",
        :email => "Email",
        :website => "Website",
        :address_street => "Address Street",
        :address_street2 => "Address Street2",
        :address_suburb => "Address Suburb",
        :address_city => "Address City",
        :address_postcode => "Address Postcode",
        :address_country => "Address Country"
      )
    ])
  end

  it "renders a list of shops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Retailer".to_s, :count => 2
    assert_select "tr>td", :text => "Shop".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tax".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Address Street".to_s, :count => 2
    assert_select "tr>td", :text => "Address Street2".to_s, :count => 2
    assert_select "tr>td", :text => "Address Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "Address City".to_s, :count => 2
    assert_select "tr>td", :text => "Address Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Address Country".to_s, :count => 2
  end
end
