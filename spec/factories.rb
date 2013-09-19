FactoryGirl.define do
  factory :user do
    name    "david"
    email   "hoodavy@gmail.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end