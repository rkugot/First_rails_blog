class AddUsername < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :username, :string
  end
end
