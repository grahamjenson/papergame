require 'spec_helper'

describe "retailers/show" do
  before(:each) do
    @retailer = assign(:retailer, stub_model(Retailer,
      :retailer_id => "Retailer",
      :name => "Name",
      :prefix => "Prefix",
      :phone1 => "Phone1",
      :phone2 => "Phone2",
      :fax => "Fax",
      :email => "Email",
      :website => "Website",
      :country => "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Retailer/)
    rendered.should match(/Name/)
    rendered.should match(/Prefix/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Fax/)
    rendered.should match(/Email/)
    rendered.should match(/Website/)
    rendered.should match(/Country/)
  end
end
