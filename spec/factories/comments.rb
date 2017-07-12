FactoryGirl.define do
  factory :comment do
    author "mike"
    #передаём блок. каждому комментарию будет даваться body вида "comment body 1",2,3 и т.д.
    sequence(:body) { |n| "comment body #{n}"}
  end
end