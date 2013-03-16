require 'spec_helper'

describe "identifiers/edit" do
  before(:each) do
    @identifier = assign(:identifier, stub_model(Identifier,
      :identifier_id => "MyString",
      :type_token => "MyString",
      :issuer => "MyString",
      :value => "MyString",
      :display => "MyString"
    ))
  end

  it "renders the edit identifier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => identifiers_path(@identifier), :method => "post" do
      assert_select "input#identifier_identifier_id", :name => "identifier[identifier_id]"
      assert_select "input#identifier_type_token", :name => "identifier[type_token]"
      assert_select "input#identifier_issuer", :name => "identifier[issuer]"
      assert_select "input#identifier_value", :name => "identifier[value]"
      assert_select "input#identifier_display", :name => "identifier[display]"
    end
  end
end
