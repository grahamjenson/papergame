require 'spec_helper'

describe "receipts/show" do
  before(:each) do
    @receipt = assign(:receipt, stub_model(Receipt,
      :receipt_id => "Receipt",
      :retailer_id => 1,
      :shop_id => 2,
      :pos_id => 3,
      :tax_total => 1.5,
      :cost_total => 1.5,
      :currency => "Currency",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Receipt/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Currency/)
    rendered.should match(/MyText/)
  end
end
