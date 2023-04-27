class CreateColors < ActiveRecord::Migration[7.0]
  def change
    create_table :colors do |t|
      t.string :color
      t.references :shoes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
