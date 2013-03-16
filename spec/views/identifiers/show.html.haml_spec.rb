require 'spec_helper'

describe "identifiers/show" do
  before(:each) do
    @identifier = assign(:identifier, stub_model(Identifier,
      :identifier_id => "Identifier",
      :type_token => "Type Token",
      :issuer => "Issuer",
      :value => "Value",
      :display => "Display"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Identifier/)
    rendered.should match(/Type Token/)
    rendered.should match(/Issuer/)
    rendered.should match(/Value/)
    rendered.should match(/Display/)
  end
end
