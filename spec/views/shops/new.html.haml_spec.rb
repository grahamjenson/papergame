require 'spec_helper'

describe "shops/new" do
  before(:each) do
    assign(:shop, stub_model(Shop,
      :retailer_id => "MyString",
      :shop_id => "MyString",
      :category => "MyString",
      :name => "MyString",
      :tax_id => "MyString",
      :geo_lon => 1.5,
      :geo_lat => 1.5,
      :phone1 => "MyString",
      :phone2 => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :website => "MyString",
      :address_street => "MyString",
      :address_street2 => "MyString",
      :address_suburb => "MyString",
      :address_city => "MyString",
      :address_postcode => "MyString",
      :address_country => "MyString"
    ).as_new_record)
  end

  it "renders new shop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shops_path, :method => "post" do
      assert_select "input#shop_retailer_id", :name => "shop[retailer_id]"
      assert_select "input#shop_shop_id", :name => "shop[shop_id]"
      assert_select "input#shop_category", :name => "shop[category]"
      assert_select "input#shop_name", :name => "shop[name]"
      assert_select "input#shop_tax_id", :name => "shop[tax_id]"
      assert_select "input#shop_geo_lon", :name => "shop[geo_lon]"
      assert_select "input#shop_geo_lat", :name => "shop[geo_lat]"
      assert_select "input#shop_phone1", :name => "shop[phone1]"
      assert_select "input#shop_phone2", :name => "shop[phone2]"
      assert_select "input#shop_fax", :name => "shop[fax]"
      assert_select "input#shop_email", :name => "shop[email]"
      assert_select "input#shop_website", :name => "shop[website]"
      assert_select "input#shop_address_street", :name => "shop[address_street]"
      assert_select "input#shop_address_street2", :name => "shop[address_street2]"
      assert_select "input#shop_address_suburb", :name => "shop[address_suburb]"
      assert_select "input#shop_address_city", :name => "shop[address_city]"
      assert_select "input#shop_address_postcode", :name => "shop[address_postcode]"
      assert_select "input#shop_address_country", :name => "shop[address_country]"
    end
  end
end
