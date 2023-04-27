class RenameShoesIdColumnInSizes < ActiveRecord::Migration[7.0]
  def change
    rename_column :sizes, :shoes_id, :shoe_id
  end
end
