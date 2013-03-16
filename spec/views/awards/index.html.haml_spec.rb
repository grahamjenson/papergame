require 'spec_helper'

describe "awards/index" do
  before(:each) do
    assign(:awards, [
      stub_model(Award,
        :user_id => 1,
        :complete => 1.5,
        :retailer_id => 2,
        :description => "MyText",
        :title => "Title",
        :image => "Image"
      ),
      stub_model(Award,
        :user_id => 1,
        :complete => 1.5,
        :retailer_id => 2,
        :description => "MyText",
        :title => "Title",
        :image => "Image"
      )
    ])
  end

  it "renders a list of awards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
