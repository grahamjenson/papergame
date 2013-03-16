require 'spec_helper'

describe "awards/edit" do
  before(:each) do
    @award = assign(:award, stub_model(Award,
      :user_id => 1,
      :complete => 1.5,
      :retailer_id => 1,
      :description => "MyText",
      :title => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit award form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => awards_path(@award), :method => "post" do
      assert_select "input#award_user_id", :name => "award[user_id]"
      assert_select "input#award_complete", :name => "award[complete]"
      assert_select "input#award_retailer_id", :name => "award[retailer_id]"
      assert_select "textarea#award_description", :name => "award[description]"
      assert_select "input#award_title", :name => "award[title]"
      assert_select "input#award_image", :name => "award[image]"
    end
  end
end
