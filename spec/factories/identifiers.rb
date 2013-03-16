# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :identifier do
    identifier_id "MyString"
    type_token "MyString"
    issuer "MyString"
    value "MyString"
    display "MyString"
  end
end
