# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :award do
    user_id 1
    complete 1.5
    retailer_id 1
    description "MyText"
    title "MyString"
    image "MyString"
  end
end
