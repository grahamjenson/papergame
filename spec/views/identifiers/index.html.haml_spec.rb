require 'spec_helper'

describe "identifiers/index" do
  before(:each) do
    assign(:identifiers, [
      stub_model(Identifier,
        :identifier_id => "Identifier",
        :type_token => "Type Token",
        :issuer => "Issuer",
        :value => "Value",
        :display => "Display"
      ),
      stub_model(Identifier,
        :identifier_id => "Identifier",
        :type_token => "Type Token",
        :issuer => "Issuer",
        :value => "Value",
        :display => "Display"
      )
    ])
  end

  it "renders a list of identifiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "Type Token".to_s, :count => 2
    assert_select "tr>td", :text => "Issuer".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
  end
end
