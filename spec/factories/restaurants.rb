FactoryGirl.define do
  factory :restaurant do
    id 1
    name 'name'
    cuisine_id 1
    address 'address 1'
    does_accept_10bis true
    delivery_sla_in_minutes 15

    trait :invalid10bis do
      does_accept10bis 'invalid value'
    end
  end
end
