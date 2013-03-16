# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :award_template do
    award_id 1
    title "MyString"
    description "MyText"
    image "MyString"
  end
end
