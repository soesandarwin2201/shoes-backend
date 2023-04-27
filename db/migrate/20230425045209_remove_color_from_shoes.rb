class RemoveColorFromShoes < ActiveRecord::Migration[7.0]
  def change
    remove_column :shoes, :color, :string
  end
end
