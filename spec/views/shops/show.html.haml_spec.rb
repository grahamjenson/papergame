require 'spec_helper'

describe "shops/show" do
  before(:each) do
    @shop = assign(:shop, stub_model(Shop,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Retailer/)
    rendered.should match(/Shop/)
    rendered.should match(/Category/)
    rendered.should match(/Name/)
    rendered.should match(/Tax/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Fax/)
    rendered.should match(/Email/)
    rendered.should match(/Website/)
    rendered.should match(/Address Street/)
    rendered.should match(/Address Street2/)
    rendered.should match(/Address Suburb/)
    rendered.should match(/Address City/)
    rendered.should match(/Address Postcode/)
    rendered.should match(/Address Country/)
  end
end
