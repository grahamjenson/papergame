# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shop do
    retailer_id "MyString"
    shop_id "MyString"
    category "MyString"
    name "MyString"
    tax_id "MyString"
    geo_lon 1.5
    geo_lat 1.5
    phone1 "MyString"
    phone2 "MyString"
    fax "MyString"
    email "MyString"
    website "MyString"
    address_street "MyString"
    address_street2 "MyString"
    address_suburb "MyString"
    address_city "MyString"
    address_postcode "MyString"
    address_country "MyString"
  end
end
