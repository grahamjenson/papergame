require 'spec_helper'

describe "award_templates/show" do
  before(:each) do
    @award_template = assign(:award_template, stub_model(AwardTemplate,
      :award_id => 1,
      :title => "Title",
      :description => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
  end
end
