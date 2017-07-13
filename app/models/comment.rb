class Comment < ApplicationRecord
  belongs_to :article
  validates_length_of :body, maximum: 4000
end
