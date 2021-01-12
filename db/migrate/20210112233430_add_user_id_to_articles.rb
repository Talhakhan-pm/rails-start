class AddUserIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :user_id, :int
  end
end
