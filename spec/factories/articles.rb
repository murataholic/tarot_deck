FactoryBot.define do
  factory :article do
    title     { 'タイトル' }
    genre_id  { Faker::Number.between(from: 1, to: 12) }
    text      { Faker::Number.number(digits: 10) }
    arc1_id   { 1 }
    arc2_id   { 2 }
    arc3_id   { 3 }
    arc4_id   { 4 }
    arc5_id   { 5 }
    arc6_id   { 6 }
    arc7_id   { 7 }
    arc8_id   { 8 }
    arc9_id   { 9 }
    arc10_id  { 10 }
    arc11_id  { 11 }
    arc12_id  { 12 }
    arc13_id  { 13 }
    arc14_id  { 14 }
    arc15_id  { 15 }
    arc16_id  { 16 }
    arc17_id  { 17 }
    arc18_id  { 18 }
    arc19_id  { 18 }
    arc20_id  { 20 }
    mons1_id  { 22 }
    mons2_id  { 22 }
    mons3_id  { 22 }
    mons4_id  { 22 }
    mons5_id  { 22 }
    mons6_id  { 23 }
    mons7_id  { 23 }
    mons8_id  { 23 }
    mons9_id  { 23 }
    mons10_id { 23 }
    mons11_id { 24 }
    mons12_id { 24 }
    mons13_id { 24 }
    mons14_id { 24 }
    mons15_id { 24 }
    mons16_id { 25 }
    mons17_id { 25 }
    mons18_id { 25 }
    mons19_id { 25 }
    mons20_id { 25 }
  end
end
