require 'spec_helper'

describe "retailers/new" do
  before(:each) do
    assign(:retailer, stub_model(Retailer,
      :retailer_id => "MyString",
      :name => "MyString",
      :prefix => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :website => "MyString",
      :country => "MyString"
    ).as_new_record)
  end

  it "renders new retailer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => retailers_path, :method => "post" do
      assert_select "input#retailer_retailer_id", :name => "retailer[retailer_id]"
      assert_select "input#retailer_name", :name => "retailer[name]"
      assert_select "input#retailer_prefix", :name => "retailer[prefix]"
      assert_select "input#retailer_phone1", :name => "retailer[phone1]"
      assert_select "input#retailer_phone2", :name => "retailer[phone2]"
      assert_select "input#retailer_fax", :name => "retailer[fax]"
      assert_select "input#retailer_email", :name => "retailer[email]"
      assert_select "input#retailer_website", :name => "retailer[website]"
      assert_select "input#retailer_country", :name => "retailer[country]"
    end
  end
end
