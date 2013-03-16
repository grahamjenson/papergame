# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trigger do
    name ""
    description ""
    legals ""
    rule ""
    action ""
    date_from ""
    date_to ""
    qty ""
    code ""
    pos_id ""
    shop_id ""
    retailer_id "MyString"
  end
end
