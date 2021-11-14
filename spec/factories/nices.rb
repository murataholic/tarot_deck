FactoryBot.define do
  factory :nice do
    association :user
    association :article
  end
end
