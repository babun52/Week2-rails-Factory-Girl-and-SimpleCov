FactoryGirl.define do
  factory :user, class: User do
    user_name 'john'
    email 'john@john.com'
    password '1234'
    password_confirmation '1234'
  end
end
