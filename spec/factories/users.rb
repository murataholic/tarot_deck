FactoryBot.define do
  factory :user do
    nickname                { Gimei.last.katakana }
    email                   { Faker::Internet.free_email }
    password                { Faker::Alphanumeric.alphanumeric(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation   { password }
  end
end