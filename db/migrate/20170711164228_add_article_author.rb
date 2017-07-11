class AddArticleAuthor < ActiveRecord::Migration[5.0]
  def up
    add_column :articles, :author, :string
    add_index :articles, :author, unique: :true
  end
end
