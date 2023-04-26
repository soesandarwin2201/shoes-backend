class RenameShoesIdColumnInImages < ActiveRecord::Migration[7.0]
  def change
    rename_column :images, :shoes_id, :shoe_id
  end
end
