require 'spec_helper'

describe "award_templates/new" do
  before(:each) do
    assign(:award_template, stub_model(AwardTemplate,
      :award_id => 1,
      :title => "MyString",
      :description => "MyText",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new award_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => award_templates_path, :method => "post" do
      assert_select "input#award_template_award_id", :name => "award_template[award_id]"
      assert_select "input#award_template_title", :name => "award_template[title]"
      assert_select "textarea#award_template_description", :name => "award_template[description]"
      assert_select "input#award_template_image", :name => "award_template[image]"
    end
  end
end
