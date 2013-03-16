require 'spec_helper'

describe "award_templates/index" do
  before(:each) do
    assign(:award_templates, [
      stub_model(AwardTemplate,
        :award_id => 1,
        :title => "Title",
        :description => "MyText",
        :image => "Image"
      ),
      stub_model(AwardTemplate,
        :award_id => 1,
        :title => "Title",
        :description => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of award_templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
