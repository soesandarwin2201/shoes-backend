class RenameUsersIdColumnInShoes < ActiveRecord::Migration[7.0]
  def change
    rename_column :shoes, :users_id, :user_id
  end
end
