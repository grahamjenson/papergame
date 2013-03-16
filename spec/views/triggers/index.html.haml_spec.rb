require 'spec_helper'

describe "triggers/index" do
  before(:each) do
    assign(:triggers, [
      stub_model(Trigger),
      stub_model(Trigger)
    ])
  end

  it "renders a list of triggers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
