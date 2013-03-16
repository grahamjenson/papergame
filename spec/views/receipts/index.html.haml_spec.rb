require 'spec_helper'

describe "receipts/index" do
  before(:each) do
    assign(:receipts, [
      stub_model(Receipt,
        :receipt_id => "Receipt",
        :retailer_id => 1,
        :shop_id => 2,
        :pos_id => 3,
        :tax_total => 1.5,
        :cost_total => 1.5,
        :currency => "Currency",
        :notes => "MyText"
      ),
      stub_model(Receipt,
        :receipt_id => "Receipt",
        :retailer_id => 1,
        :shop_id => 2,
        :pos_id => 3,
        :tax_total => 1.5,
        :cost_total => 1.5,
        :currency => "Currency",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of receipts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Receipt".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
