require 'spec_helper'

describe "awards/show" do
  before(:each) do
    @award = assign(:award, stub_model(Award,
      :user_id => 1,
      :complete => 1.5,
      :retailer_id => 2,
      :description => "MyText",
      :title => "Title",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
    rendered.should match(/Image/)
  end
end
