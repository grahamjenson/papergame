require 'spec_helper'

describe "receipts/new" do
  before(:each) do
    assign(:receipt, stub_model(Receipt,
      :receipt_id => "MyString",
      :retailer_id => 1,
      :shop_id => 1,
      :pos_id => 1,
      :tax_total => 1.5,
      :cost_total => 1.5,
      :currency => "MyString",
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new receipt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => receipts_path, :method => "post" do
      assert_select "input#receipt_receipt_id", :name => "receipt[receipt_id]"
      assert_select "input#receipt_retailer_id", :name => "receipt[retailer_id]"
      assert_select "input#receipt_shop_id", :name => "receipt[shop_id]"
      assert_select "input#receipt_pos_id", :name => "receipt[pos_id]"
      assert_select "input#receipt_tax_total", :name => "receipt[tax_total]"
      assert_select "input#receipt_cost_total", :name => "receipt[cost_total]"
      assert_select "input#receipt_currency", :name => "receipt[currency]"
      assert_select "textarea#receipt_notes", :name => "receipt[notes]"
    end
  end
end
