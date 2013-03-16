require 'spec_helper'

describe "triggers/show" do
  before(:each) do
    @trigger = assign(:trigger, stub_model(Trigger))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
