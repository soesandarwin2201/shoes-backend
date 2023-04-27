class RenameShoesIdColumnInColor < ActiveRecord::Migration[7.0]
  def change
    rename_column :colors, :shoes_id, :shoe_id
  end
end
