# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    title "MyString"
    address "MyString"
    zipcode "MyString"
    city "MyString"
    country "MyString"
    description "MyText"
    beds 1
    bathrooms 1
    size 1
    facility nil
  end
end
