class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :name
      t.string :color
      t.integer :year
    end
  end
end
