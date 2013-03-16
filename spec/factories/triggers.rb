# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trigger do
    name "Coffee Card"
    description "If you buy 9 coffees, you get one free"
    legals "Only if purchased using your loyalty card"
    rule { { rule: "product_code", condition: "=", value: "COFFEE" } }
    action { { action: "webhook", value: "http://www.loyalty.com/api/add-points" } }
    date_from { Time.zone.now }
    date_to { Time.zone.now }
    qty 10
    code "OFFER01"
    pos_id "d33fe2cc-58cc-4372-a567-0e02b2c3d479"
    shop_id "c33fe2cc-58cc-4372-a567-0e02b2c3d479"
    retailer_id "b33fe2cc-58cc-4372-a567-0e02b2c3d479"
  end
end
