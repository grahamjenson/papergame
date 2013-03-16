require 'spec_helper'

describe "triggers/edit" do
  before(:each) do
    @trigger = assign(:trigger, stub_model(Trigger))
  end

  it "renders the edit trigger form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => triggers_path(@trigger), :method => "post" do
    end
  end
end
