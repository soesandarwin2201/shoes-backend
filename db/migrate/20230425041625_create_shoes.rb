class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.float :price
      t.string :color
      t.text :description
      t.boolean :sale
      t.string :categroy
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
