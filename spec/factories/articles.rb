FactoryGirl.define do
  factory :article do
    title "Article title"
    text "Article text"
    #создаём фабрику с названием article_with_comments
    #для создания стать с несколькими комментариями

    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #создаём список из комментариев (3) для созданного article из блока
        create_list :comment, 3, article: article
      end
    end
  end
end