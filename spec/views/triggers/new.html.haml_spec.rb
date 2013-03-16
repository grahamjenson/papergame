require 'spec_helper'

describe "triggers/new" do
  before(:each) do
    assign(:trigger, stub_model(Trigger).as_new_record)
  end

  it "renders new trigger form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => triggers_path, :method => "post" do
    end
  end
end
