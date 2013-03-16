# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :receipt do
    receipt_id "MyString"
    date_time "2013-03-16 12:38:32"
    retailer_id 1
    shop_id 1
    pos_id 1
    tax_total 1.5
    cost_total 1.5
    currency "MyString"
    notes "MyText"
  end
end
