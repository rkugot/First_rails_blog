class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments, dependent: :destroy
  validates_length_of :title, maximum: 140
  validates_length_of :text, maximum: 4000

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
