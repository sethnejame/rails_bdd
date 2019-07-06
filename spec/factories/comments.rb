FactoryBot.define do
  factory :comment do
    comment { "MyString" }
    body { "MyText" }
    article { nil }
  end
end
