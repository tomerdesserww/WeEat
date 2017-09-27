FactoryGirl.define do
  factory :review do
    reviewer 'rev1'
    rating 3
    comment 'comment long so very long comment 1'
    restaurant_id 1
  end

  trait :invalid_rating do
    rating 4
  end
end